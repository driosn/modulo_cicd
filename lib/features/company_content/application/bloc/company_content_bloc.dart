import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/features/company_content/domain/repositories/company_content_repository.dart';

part 'company_content_bloc.freezed.dart';
part 'company_content_event.dart';
part 'company_content_state.dart';

class CompanyContentBloc
    extends Bloc<CompanyContentEvent, CompanyContentState> {
  CompanyContentBloc({
    required CompanyContentRepository companyContentRepository,
    required MaLocalizations maLocalizations,
  })  : _companyContentRepository = companyContentRepository,
        super(const _Initial()) {
    on<_GetAutoPayAuthorizationTextEvent>(_onGetAutoPayAuthorizationTextEvent);
    on<_GetOneTimePaymentAuthorizationTextEvent>(
        _onGetOneTimePaymentAuthorizationTextEvent);
  }

  final CompanyContentRepository _companyContentRepository;

  void _onGetAutoPayAuthorizationTextEvent(
    _GetAutoPayAuthorizationTextEvent event,
    Emitter<CompanyContentState> emit,
  ) async {
    emit(_Loading());
    final companyContentResponse = await _companyContentRepository.get(
      event.companyId,
      ContentType.autoPayAuthorizationText(),
    );

    companyContentResponse.fold(
      (failure) {
        emit(_Error());
      },
      (data) {
        emit(
          _Success(autoPayAuthorizationText: data.content),
        );
      },
    );
  }

  void _onGetOneTimePaymentAuthorizationTextEvent(
    _GetOneTimePaymentAuthorizationTextEvent event,
    Emitter<CompanyContentState> emit,
  ) async {
    emit(_Loading());
    final companyContentResponse = await _companyContentRepository.get(
      event.companyId,
      ContentType.oneTimePaymentAuthorizationText(),
    );

    companyContentResponse.fold(
      (failure) {
        emit(_Error());
      },
      (data) {
        emit(
          _Success(
            oneTimePaymentAuthorizationText: data.content,
          ),
        );
      },
    );
  }
}
