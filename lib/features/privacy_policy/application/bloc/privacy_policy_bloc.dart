import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/domain/document.dart';
import 'package:resident_app/features/privacy_policy/domain/repositories/privacy_policy_repository.dart';

part 'privacy_policy_bloc.freezed.dart';
part 'privacy_policy_event.dart';
part 'privacy_policy_state.dart';

class PrivacyPolicyBloc extends Bloc<PrivacyPolicyEvent, PrivacyPolicyState> {
  PrivacyPolicyBloc({
    required PrivacyPolicyRepository privacyPolicyRepository,
  })  : _privacyPolicyRepository = privacyPolicyRepository,
        super(const PrivacyPolicyState()) {
    on<_GetPrivacyPolicyEvent>(_getPrivacyPolicy);
  }

  final PrivacyPolicyRepository _privacyPolicyRepository;

  void _getPrivacyPolicy(
    _GetPrivacyPolicyEvent event,
    Emitter<PrivacyPolicyState> emit,
  ) async {
    emit(state.copyWith(status: PrivacyPolicyStatus.loading));
    final failureOrDocument = await _privacyPolicyRepository.getDocument();

    failureOrDocument.fold(
      (failure) {
        emit(
          state.copyWith(
            status: PrivacyPolicyStatus.failure,
          ),
        );
      },
      (document) {
        emit(
          state.copyWith(
            privacyPolicy: document,
            status: PrivacyPolicyStatus.loaded,
          ),
        );
      },
    );
  }
}
