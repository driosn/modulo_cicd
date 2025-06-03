import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/shared/data/secure_storage.dart';
import 'package:resident_app/core/shared/network/network_wrapper.dart';
import 'package:resident_app/features/auth/sign_in/domain/entities/login_body.dart';
import 'package:resident_app/features/auth/sign_in/domain/entities/login_response.dart';
import 'package:resident_app/features/auth/sign_in/domain/entities/repositories/login_repository.dart';
import 'package:resident_app/features/biometric_sign_in/domain/repositories/biometric_repository.dart';
import 'package:resident_app/features/document_acceptance/domain/repositories/acceptance_criteria_repository.dart';
import 'package:resident_app/features/user/domain/entities/user.dart';
import 'package:resident_app/features/user/domain/repositories/user_repository.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({
    required NetworkWrapper networkWrapper,
    required SecureStorageWrapper storageWrapper,
    required LoginRepository loginRepository,
    required UserRepository userRepository,
    required AcceptanceCriteriaRepository acceptanceCriteriaRepository,
    required BiometricRepository biometricRepository,
  })  : _networkWrapper = networkWrapper,
        _storageWrapper = storageWrapper,
        _loginRepository = loginRepository,
        _userRepository = userRepository,
        _acceptanceCriteriaRepository = acceptanceCriteriaRepository,
        _biometricRepository = biometricRepository,
        super(const SignInState.initial()) {
    on<_SignInEvent>(_onSignIn);
    on<_SignInWithBiometricsEvent>(_onSignInWithBiometrics);
    on<_SignOutEvent>(_onSignOut);
    on<_SignedOutEvent>(_onSignedOut);
    on<_SessionExpiredEvent>(_onSessionExpired);
  }

  final BiometricRepository _biometricRepository;

  ///
  /// Used to set the token to the dio client
  ///
  final NetworkWrapper _networkWrapper;

  ///
  /// Used to save user values
  ///
  final SecureStorageWrapper _storageWrapper;

  ///
  /// Repositories
  ///
  final LoginRepository _loginRepository;
  final UserRepository _userRepository;
  final AcceptanceCriteriaRepository _acceptanceCriteriaRepository;

  void _onSignOut(
    _SignOutEvent event,
    Emitter<SignInState> emit,
  ) {
    _networkWrapper.cleanToken();
    _storageWrapper.removeKey(tokenKey);
    _storageWrapper.removeKey(userIdKey);

    // debugPrint('SignOut -> Emitting loggedOut');
    emit(
      const SignInState.loggedOut(),
    );
  }

  void _onSessionExpired(
    _SessionExpiredEvent event,
    Emitter<SignInState> emit,
  ) {
    // TODO share this logic with _onSignOut
    _networkWrapper.cleanToken();
    _storageWrapper.removeKey(tokenKey);
    _storageWrapper.removeKey(userIdKey);

    // debugPrint('SessionExpired -> Emitting sessionExpired');
    emit(
      const SignInState.sessionExpired(),
    );
  }

  void _onSignedOut(
    _SignedOutEvent event,
    Emitter<SignInState> emit,
  ) {
    emit(
      const SignInState.initial(),
    );
  }

  void _onSignInWithBiometrics(
    _SignInWithBiometricsEvent event,
    Emitter<SignInState> emit,
  ) async {
    emitFailure(String errorMessage) => emit(SignInState.biometricsFailure(errorMessage));
    emitSuccess(
      User user,
      bool navigateToSummary,
    ) =>
        emit(SignInState.success(
          user: user,
          navigateToSummary: navigateToSummary,
        ));

    late String? cachedUsername;
    late String? cachedPassword;

    final biometricAuthResult = await _biometricRepository.authenticateWithBiometrics();

    if (biometricAuthResult.isLeft()) {
      emitFailure('Error Message');
      return;
    }

    final biometricIsAuthenticated = biometricAuthResult.fold(
      (_) => false,
      (isAuthenticated) => isAuthenticated,
    );

    if (biometricIsAuthenticated) {
      emit(
        const SignInState.loading(),
      );

      cachedUsername = await _biometricRepository.getBiometricUserName();
      cachedPassword = await _biometricRepository.getBiometricPass();
      if (cachedUsername == null || cachedPassword == null) {
        emitFailure('Error Message');
      } else {
        final loginBodyOrFailure = await _loginRepository.login(
          cachedUsername,
          cachedPassword,
        );

        if (loginBodyOrFailure.isLeft()) {
          emitFailure('Error Message');
          return;
        }

        final loginBody = loginBodyOrFailure.fold(
          (_) => null,
          (loginBody) => loginBody,
        ) as LoginBody;

        final response = loginBody.loginResponse;
        final token = loginBody.token;
        final userIdClaim = response.userIdClaim;

        if (userIdClaim == null) {
          emitFailure('Error Message');
          return;
        }

        _networkWrapper.setToken(token);
        _storageWrapper.setKeyValue(tokenKey, token);
        _storageWrapper.setKeyValue(userIdKey, userIdClaim.value);
        final userOrFailure = await _userRepository.get();

        if (userOrFailure.isLeft()) {
          emitFailure('Error Message');
          return;
        }

        final user = userOrFailure.fold(
          (_) => null,
          (user) => user,
        );

        final acceptanceCriteriaDocumentsOrFailure = await _acceptanceCriteriaRepository.getAcceptanceCriteria(
          user!.residentUserId,
        );

        acceptanceCriteriaDocumentsOrFailure.fold(
          (_) => emitFailure('Error Message'),
          (documents) {
            bool allDocumentsAccepted = true;

            for (final document in documents) {
              document.legalDocumentType.maybeWhen(
                supportedBrowsersAndOperatingSystems: null,
                orElse: () {
                  if (document.isAccepted == false) {
                    allDocumentsAccepted = false;
                  }
                },
              );
            }

            final navigateToSummary = allDocumentsAccepted;
            emitSuccess(
              user,
              navigateToSummary,
            );
          },
        );
      }
    }
  }

  void _onSignIn(
    _SignInEvent event,
    Emitter<SignInState> emit,
  ) async {
    emitFailure(String errorMessage) => emit(SignInState.failure(errorMessage));
    emitSuccess(
      User user,
      bool navigateToSummary,
    ) =>
        emit(SignInState.success(
          user: user,
          navigateToSummary: navigateToSummary,
        ));

    emit(
      const SignInState.loading(),
    );

    final loginBodyOrFailure = await _loginRepository.login(
      event.username,
      event.password,
    );

    if (loginBodyOrFailure.isLeft()) {
      emitFailure('Error Message');
      return;
    }

    final loginBody = loginBodyOrFailure.fold(
      (_) => null,
      (loginBody) => loginBody,
    ) as LoginBody;

    final response = loginBody.loginResponse;
    final token = loginBody.token;
    final userIdClaim = response.userIdClaim;

    if (userIdClaim == null) {
      emitFailure('Error Message');
      return;
    }

    _networkWrapper.setToken(token);
    await Future.delayed(Duration(milliseconds: 200));
    _storageWrapper.setKeyValue(tokenKey, token);
    _storageWrapper.setKeyValue(userIdKey, userIdClaim.value);
    if (event.username.isNotEmpty) {
      await _storageWrapper.setKeyValue(userNameKey, event.username);
    }
    if (event.password.isNotEmpty) {
      await _storageWrapper.setKeyValue(passKey, event.password);
    }
    final userOrFailure = await _userRepository.get();

    if (userOrFailure.isLeft()) {
      emitFailure('Error Message');
      return;
    }

    final user = userOrFailure.fold(
      (_) => null,
      (user) => user,
    );

    final acceptanceCriteriaDocumentsOrFailure = await _acceptanceCriteriaRepository.getAcceptanceCriteria(
      user!.residentUserId,
    );

    acceptanceCriteriaDocumentsOrFailure.fold((_) => emitFailure('Error Message'), (documents) {
      bool allDocumentsAccepted = true;

      for (final document in documents) {
        document.legalDocumentType.maybeWhen(
          supportedBrowsersAndOperatingSystems: null,
          orElse: () {
            if (document.isAccepted == false) {
              allDocumentsAccepted = false;
            }
          },
        );
      }

      final navigateToSummary = allDocumentsAccepted;
      emitSuccess(
        user,
        navigateToSummary,
      );
    });
  }
}
