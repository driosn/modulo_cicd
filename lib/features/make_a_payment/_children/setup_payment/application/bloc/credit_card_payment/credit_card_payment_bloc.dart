import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/domain/entities/request_intellipay_code.dart';
import 'package:resident_app/features/make_a_payment/common/request_intellipay_code_params.dart';
import 'package:resident_app/features/make_a_payment/data/repositories/make_a_payment_repository_impl.dart';
import 'package:resident_app/features/make_a_payment/domain/repositories/make_a_payment_repository.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as shelf_io;
// ignore: depend_on_referenced_packages
import 'package:shelf_static/shelf_static.dart';

part 'credit_card_payment_bloc.freezed.dart';
part 'credit_card_payment_event.dart';
part 'credit_card_payment_state.dart';

class CreditCardPaymentBloc
    extends Bloc<CreditCardPaymentEvent, CreditCardPaymentState> {
  CreditCardPaymentBloc({
    required MakeAPaymentRepository makeAPaymentRepository,
  })  : _makeAPaymentRepository = makeAPaymentRepository,
        super(const _Initial()) {
    on<_ProcessIntelliPayDialogEvent>(_onProcessIntelliPayDialog);
    on<_ApprovePaymentEvent>(_onApprovePayment);
    on<_DeclinePaymentEvent>(_onDeclinePayment);
  }

  final MakeAPaymentRepository _makeAPaymentRepository;

  _onProcessIntelliPayDialog(
    _ProcessIntelliPayDialogEvent event,
    Emitter<CreditCardPaymentState> emit,
  ) async {
    Future<void> copyAssetsToDocuments() async {
      final directory = await getApplicationDocumentsDirectory();
      final bundle = rootBundle;
      final assets = await bundle.loadString('AssetManifest.json');
      var assetList = jsonDecode(assets) as Map<String, dynamic>;

      for (final assetPath in assetList.keys) {
        if (assetPath.contains('/html')) {
          final assetData = await bundle.load(assetPath);
          final correctedAssetPath = assetPath.split('assets/').last;
          final file = File('${directory.path}/$correctedAssetPath');
          await file.create(recursive: true);
          await file.writeAsBytes(assetData.buffer.asUint8List());
          // print(file.path);
        }
      }
    }

    Future<HttpServer> initServerWithHtmlFile() async {
      try {
        await copyAssetsToDocuments();
        final directory = await getApplicationDocumentsDirectory();
        final staticHandler = createStaticHandler(
          '${directory.path}/html',
          defaultDocument: 'intellipay.html',
        );

        appHandler(shelf.Request request) {
          return staticHandler(request);
        }

        final server = await shelf_io.serve(
          appHandler,
          '127.0.0.1',
          8080,
          shared: true,
        );

        return server;
      } catch (e) {
        rethrow;
      }
    }

    /// ========================================
    /// START OF THE METHOD
    /// ========================================

    emit(const _LoadingIntelliPayDialog());

    final server = await initServerWithHtmlFile();

    final intelliPayCodeOrFailure =
        await _makeAPaymentRepository.requestIntelliPayCode(
      params: event.params,
    );

    intelliPayCodeOrFailure.fold(
      (error) {
        emit(
          _FailureIntelliPayDialog(
            error.error,
            error.makeAPaymentError
          ),
        );
      },
      (intelliPayCode) {
        emit(
          _ReadyIntelliPayDialog(
            server,
            intelliPayCode,
          ),
        );
      },
    );
  }

  void _onApprovePayment(
    _ApprovePaymentEvent event,
    Emitter<CreditCardPaymentState> emit,
  ) {
    emit(
      CreditCardPaymentState.success(),
    );
  }

  void _onDeclinePayment(
    _DeclinePaymentEvent event,
    Emitter<CreditCardPaymentState> emit,
  ) {
    emit(
      CreditCardPaymentState.paymentDeclined(),
    );
  }
}
