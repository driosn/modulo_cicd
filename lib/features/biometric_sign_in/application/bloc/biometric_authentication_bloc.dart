import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';
import 'package:resident_app/features/biometric_sign_in/domain/repositories/biometric_repository.dart';

part 'biometric_authentication_bloc.freezed.dart';
part 'biometric_authentication_event.dart';
part 'biometric_authentication_state.dart';

class BiometricAuthenticationBloc extends Bloc<BiometricAuthenticationEvent, BiometricAuthenticationState> {
  BiometricAuthenticationBloc({
    required BiometricRepository biometricRepository,
  })  : _biometricRepository = biometricRepository,
        super(const BiometricAuthenticationState()) {
    on<_SetAuthenticationType>(_onSetAuthenticationType);
    on<_EnableBiometricAuthentication>(_onEnableBiometricAuthentication);
    on<_EnableBiometricAuthenticationWithoutVerificationEvent>(_onEnableBiometricAuthenticationWithoutVerificationEvent);
    on<_DisableBiometricAuthenticationWithoutVerificationEvent>(_onDisableBiometricAuthenticationWithoutVerificationEvent);
    on<_DisableBiometricAuthentication>(_onDisableBiometricAuthentication);
    on<_AcceptedTermsAndContions>(_onAcceptedTermsAndContions);
    on<_ResetBiometricAuthentication>(_onResetBiometricAuthentication);
    on<_Authenticate>(_onAuthenticate);
    on<_AuthenticationFailed>(_onAuthenticationFailed);
  }

  final BiometricRepository _biometricRepository;

  void _onSetAuthenticationType(
    _SetAuthenticationType event,
    Emitter<BiometricAuthenticationState> emit,
  ) async {
    final bool biometricsFirstTime = _biometricRepository.isBiometricsFirstTime;
    final bool biometricAuthenticationEnabled = _biometricRepository.isBiometricAuthEnabled;
    bool canCheckBiometrics = await _biometricRepository.canCheckBiometrics;
    String biometricType = '';
    bool haveBiometricAuthenticationAvaliable = false;
    if (canCheckBiometrics) {
      List<BiometricType> availableBiometrics = await _biometricRepository.getAvailableBiometrics();
      if (availableBiometrics.contains(BiometricType.face)) {
        biometricType = 'Face ID';
        haveBiometricAuthenticationAvaliable = true;
      } else if (availableBiometrics.contains(BiometricType.fingerprint) || availableBiometrics.contains(BiometricType.strong) || availableBiometrics.contains(BiometricType.weak)) {
        biometricType = 'Touch ID';
        haveBiometricAuthenticationAvaliable = true;
      } else if (availableBiometrics.isEmpty) {
        haveBiometricAuthenticationAvaliable = false;
      } //   if (mounted) {
      //  _authenticate();
      // }
    } else {
      haveBiometricAuthenticationAvaliable = false;
    }

    emit(
      state.copyWith(
        authenticationType: biometricType,
        haveBiometricAuthenticationAvaliable: haveBiometricAuthenticationAvaliable,
        biometricsFirstTime: biometricsFirstTime,
        isEnabled: biometricAuthenticationEnabled,
      ),
    );
  }

  void _onAcceptedTermsAndContions(
    _AcceptedTermsAndContions event,
    Emitter<BiometricAuthenticationState> emit,
  ) {
    emit(
      state.copyWith(haveAcceptedTermsAndConditions: event.accepted),
    );
  }

  void _onEnableBiometricAuthentication(
    _EnableBiometricAuthentication event,
    Emitter<BiometricAuthenticationState> emit,
  ) async {
    void saveInternalBiometricData() async {
      await _biometricRepository.setBiometricsFirstTime(false);
      await _biometricRepository.setBiometricAuthenticationEnabled(true);
    }

    bool isEnabled = true;

    final biometricAuthResult = await _biometricRepository.authenticateWithBiometrics();

    biometricAuthResult.fold(
      (error) {
        isEnabled = false;
      },
      (isAuthenticated) {
        saveInternalBiometricData();
      },
    );

    emit(
      state.copyWith(
        biometricsFirstTime: false,
        isEnabled: isEnabled,
      ),
    );
  }

  void _onAuthenticate(
    _Authenticate event,
    Emitter<BiometricAuthenticationState> emit,
  ) async {
    final biometricAuthResult = await _biometricRepository.authenticateWithBiometrics();
    emit(
      state.copyWith(
          validAuthenticaton: biometricAuthResult.fold(
        (error) => false,
        (isAuthenticated) => isAuthenticated,
      )),
    );
  }

  void _onAuthenticationFailed(_AuthenticationFailed event, Emitter<BiometricAuthenticationState> emit) async {
    // _authService.authenticate();
    emit(
      state.copyWith(isEnabled: false),
    );
    await _biometricRepository.setBiometricAuthenticationEnabled(false);
    await _biometricRepository.removeUserName();
    await _biometricRepository.removePass();
  }

  void _onDisableBiometricAuthentication(
    _DisableBiometricAuthentication event,
    Emitter<BiometricAuthenticationState> emit,
  ) async {
    void saveInternalBiometricData() async {
      await _biometricRepository.setBiometricsFirstTime(false);
      await _biometricRepository.setBiometricAuthenticationEnabled(false);
      await _biometricRepository.removeUserName();
      await _biometricRepository.removePass();
    }

    saveInternalBiometricData();

    emit(
      state.copyWith(
        biometricsFirstTime: false,
        isEnabled: false,
      ),
    );
  }

  void _onResetBiometricAuthentication(
    _ResetBiometricAuthentication event,
    Emitter<BiometricAuthenticationState> emit,
  ) async {
    _biometricRepository.removeUserName();
    _biometricRepository.removePass();

    emit(
      state.copyWith(),
    );
  }

  void _onEnableBiometricAuthenticationWithoutVerificationEvent(
    _EnableBiometricAuthenticationWithoutVerificationEvent event,
    Emitter<BiometricAuthenticationState> emit,
  ) async {
    await _biometricRepository.setBiometricsFirstTime(false);
    await _biometricRepository.setBiometricAuthenticationEnabled(true);

    emit(
      state.copyWith(
        biometricsFirstTime: false,
        isEnabled: true,
      ),
    );
  }

  void _onDisableBiometricAuthenticationWithoutVerificationEvent(
    _DisableBiometricAuthenticationWithoutVerificationEvent event,
    Emitter<BiometricAuthenticationState> emit,
  ) async {
    await _biometricRepository.setBiometricsFirstTime(false);
    await _biometricRepository.setBiometricAuthenticationEnabled(false);

    emit(
      state.copyWith(
        biometricsFirstTime: false,
        isEnabled: false,
      ),
    );
  }
}
