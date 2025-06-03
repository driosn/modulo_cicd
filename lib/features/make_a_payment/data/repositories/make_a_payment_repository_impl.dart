import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/core/shared/exceptions/exceptions.dart';
import 'package:resident_app/core/shared/helpers/number_formatter_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/domain/entities/property_payment_setting.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/domain/entities/request_intellipay_code.dart';
import 'package:resident_app/features/make_a_payment/common/make_a_payment_error_response.dart';
import 'package:resident_app/features/make_a_payment/common/make_a_payment_request_params.dart';
import 'package:resident_app/features/make_a_payment/common/request_intellipay_code_params.dart';
import 'package:resident_app/features/make_a_payment/data/datasources/make_a_payment_remote_datasource.dart';
import 'package:resident_app/features/make_a_payment/domain/repositories/make_a_payment_repository.dart';

class MakeAPaymentRepositoryImpl implements MakeAPaymentRepository {
  const MakeAPaymentRepositoryImpl({
    required MakeAPaymentRemoteDataSource makeAPaymentRemoteDataSource
  }) : _remoteDataSource = makeAPaymentRemoteDataSource;

  final MakeAPaymentRemoteDataSource _remoteDataSource;

  @override
  Future<Either<MAError, List<PropertyPaymentSetting>>>
      getPropertyPaymentSettings(
    String propertyId,
  ) async {
    try {
      final paymentSettings =
          await _remoteDataSource.getPropertyPaymentSettings(
        propertyId,
      );

      return Right(paymentSettings);
    } on MAException catch (e) {
      return Left(
        e.when(
          internalServerError: () => const MAError.internalServerError(),
          unauthorized: () => const MAError.unauthorized(),
          badRequest: (String? rawData) => const MAError.badRequest(),
          unexpected: () => const MAError.unexpected(),
        ),
      );
    } catch (e) {
      return const Left(MAError.unexpected());
    }
  }

  @override
  Future<Either<MakeAPaymentErrorResult, Empty>> postMakeAPayment({
    required MakeAPaymentRequestParams params,
  }) async {
    try {
      await _remoteDataSource.postMakeAPayment(
        params: params,
      );

      return Right(Empty());
    } on MAException catch (e) {
      return Left(
        e.when(
          internalServerError: () => MakeAPaymentErrorResult(error: const MAError.internalServerError()),
          unauthorized: () => MakeAPaymentErrorResult(error: const MAError.unauthorized()),
          unexpected: () => MakeAPaymentErrorResult(error: const MAError.unexpected()),
          badRequest: (String? rawData) => handleBadRequestError(rawData)
        ),
      );
    } catch (e) {
      return Left(MakeAPaymentErrorResult(error: MAError.unexpected()));
    }
  }

  @override
  Future<Either<MakeAPaymentErrorResult, RequestIntelliPayCode>> requestIntelliPayCode({
    required RequestIntelliPayCodeParams params,
  }) async {
    try {
      final response = await _remoteDataSource.requestIntelliPayCode(
        params: params,
      );

      return Right(response);
    } on MAException catch (e) {
      return Left(
        e.when(
          internalServerError: () => MakeAPaymentErrorResult(error: const MAError.internalServerError()),
          unauthorized: () => MakeAPaymentErrorResult(error: const MAError.unauthorized()),
          unexpected: () => MakeAPaymentErrorResult(error: const MAError.unexpected()),
          badRequest: (String? rawData) => handleBadRequestError(rawData)
        ),
      );
    } catch (e) {
      return Left(MakeAPaymentErrorResult(error: MAError.unexpected()));
    }
  }

  // Todo Write unit tests
  MakeAPaymentErrorResult handleBadRequestError(String? rawData) {
    // Todo create a localization service? Inject it? How can we test?
    final localizations = locator<MaLocalizations>().I;

    var genericTitle = localizations.paymentErrorGeneralTitle;
    var genericMessage = localizations.paymentErrorGeneralMessage;
    var userFriendlyError = new MakeAPaymentError(errorCode: MakePaymentErrorCode.unknown(), title: genericTitle, message: genericMessage);

    if(rawData == null) {
      return MakeAPaymentErrorResult(error: const MAError.badRequest(), makeAPaymentError: userFriendlyError);
    }

    try {
      /**
       * Example error responses from the server for testing purposes
       */
      // rawData = "Error:{\"errorCode\":0,\"errorMessage\":\"The payment was invalid.\",\"errorDetails\":{}},";
      // rawData = "Error:{\"errorCode\":1,\"errorMessage\":\"The payment amount was invalid.\",\"errorDetails\":{\"amount\":\"Maximum amount is \$4,900.00\"}},";
      // rawData = "Error:{\"errorCode\":2,\"errorMessage\":\"Partial payments are not allowed. Please pay at least the minimum amount required.\",\"errorDetails\":{\"amount\":\"Must pay at least \$1,513.92.\"}},";
      // rawData = "Error:{\"errorCode\":3,\"errorMessage\":\"The payment could not be processed.\",\"errorDetails\":{\"error\":\"Stop Payment Blocked\"}},";
      // rawData = "Error:{\"errorCode\":3,\"errorMessage\":\"The payment could not be processed.\",\"errorDetails\":{\"error\":\"Unable to make a payment on your account.\<br /\>Please contact your community manager.\"}},";
      // rawData = "Error:{\"errorCode\":4,\"errorMessage\":\"A payment has already been made. Are you sure you want to submit another payment?\",\"errorDetails\":{\"previousPaymentAmount\":\"5.0000\",\"previousPaymentDateTime\":\"10/11/2024 5:21:33 PM\"}},";

      // Step 1: Remove the "Error:" prefix and trailing commas
      String jsonString = rawData.replaceFirst('Error:', '').trim();
      // jsonString = '{"errorCode":4,"errorMessage":"A payment has already been made. Are you sure you want to submit another payment?","errorDetails":{"previousPaymentAmount":"2732.6100","previousPaymentDateTime":"10/25/2024 1:52:48 AM"}},';

      // Remove trailing comma if it exists
      jsonString = jsonString.replaceFirst(RegExp(r',$'), '');

      // Step 2: Parse the JSON string
      Map<String, dynamic> jsonMap = jsonDecode(jsonString);

      // Step 3: Deserialize the JSON to the MakePaymentErrorResponse object
      MakePaymentErrorResponse? errorResponse = MakePaymentErrorResponse.fromJson(jsonMap);

      // Print the deserialized object
      // print('ErrorCode: ${errorResponse?.errorCode}');
      // print('ErrorMessage: ${errorResponse?.errorMessage}');
      // print('ErrorDetails: ${errorResponse?.errorDetails}');

      // Define a map to handle specific logic for each error code
      // TODO define this in a shared space. Use DI?
      final makeAPaymentErrorHandlers = {
        MakePaymentErrorCode.unknown(): UnknownErrorHandler(),
        MakePaymentErrorCode.paymentAmountError(): PaymentAmountErrorHandler(),
        MakePaymentErrorCode.shortPaymentError(): ShortPaymentErrorHandler(),
        MakePaymentErrorCode.paymentError(): PaymentErrorHandler(),
        MakePaymentErrorCode.previousPaymentAmountError(): PreviousPaymentAmountErrorHandler(),
      };

      // Check if errorCode is not null and execute the corresponding logic
      final errorCode = errorResponse.errorCode;
      var handler = makeAPaymentErrorHandlers[errorCode];

      if (handler != null) {
        try {
          userFriendlyError = handler.handle(errorResponse);
        } catch (e) {
          // TODO: Log the error to native device logs or a log that we can inspect later.
          // Nothing needed. We want to eat this exception and return the generic error.
        }
      }

      return MakeAPaymentErrorResult(error: const MAError.badRequest(), makeAPaymentError: userFriendlyError);

    } catch (e) {
      // TODO: Log the error to native device logs or a log that we can inspect later.
      // Nothing needed. We want to eat this exception and return the generic error.
    }

    return MakeAPaymentErrorResult(error: const MAError.badRequest(), makeAPaymentError: userFriendlyError);
  }
}


///
/// TODO move the code below to separate files.
///
abstract class ErrorHandler {
  MakeAPaymentError handle(MakePaymentErrorResponse errorResponse);
}

class UnknownErrorHandler implements ErrorHandler {
  final _localizations = locator<MaLocalizations>().I;

  @override
  MakeAPaymentError handle(MakePaymentErrorResponse errorResponse) {
    /*
      An example of the data we expect to handle here:
      In this case we don't have any data. Display a generic error
      {
        "errorCode": 0,
        "errorMessage": "The payment was invalid.",
        "errorDetails": { }
      }
    */

    var title = _localizations.paymentErrorGeneralTitle;
    var message = _localizations.paymentErrorGeneralMessage;
    return MakeAPaymentError(
      errorCode: errorResponse.errorCode,
      title: title,
      message: message
    );
  }
}

class PaymentAmountErrorHandler implements ErrorHandler {
  final _localizations = locator<MaLocalizations>().I;

  @override
  MakeAPaymentError handle(MakePaymentErrorResponse errorResponse) {
    /*
      An example of the data we expect to handle here:
      {
        "errorCode": 1,
        "errorMessage": "The payment amount was invalid.",
        "errorDetails": {
          "amount": "Maximum amount is $4,900.00"
        }
      }
    */

    String? amountString = errorResponse.errorDetails['amount'];
    String amount = "";
    if(amountString != null) {
      RegExp regExp = RegExp(r'(\$[0-9,]+\.\d{2})');
      Match? match = regExp.firstMatch(amountString);
      if (match != null && match.groupCount > 0) {
        amount = match.group(1) ?? "";
      }
    }

    var title = _localizations.paymentErrorAmountExceedsMaximumTitle;
    var message = _localizations.paymentErrorAmountExceedsMaximumMessage(amount);
    return MakeAPaymentError(
      errorCode: errorResponse.errorCode,
      title: title,
      message: message
    );
  }
}

class ShortPaymentErrorHandler implements ErrorHandler {
  final _localizations = locator<MaLocalizations>().I;

  @override
  MakeAPaymentError handle(MakePaymentErrorResponse errorResponse) {
    /*
      An example of the data we expect to handle here:

      {
        "errorCode": 2,
        "errorMessage": "Partial payments are not allowed. Please pay at least the minimum amount required.",
        "errorDetails": {
          "amount": "Must pay at least $1,513.92."
        }
      }
    */

    String? amountString = errorResponse.errorDetails['amount'];
    String amount = "";
    if(amountString != null) {
      RegExp regExp = RegExp(r'(\$[0-9,]+\.\d{2})');
      Match? match = regExp.firstMatch(amountString);
      if (match != null && match.groupCount > 0) {
        amount = match.group(1) ?? "";
      }
    }

    var title = _localizations.paymentErrorAmountLowerThanMinimumTitle;
    var message = _localizations.paymentErrorAmountLowerThanMinimumMessage(amount);
    return MakeAPaymentError(
      errorCode: errorResponse.errorCode,
      title: title,
      message: message
    );
  }
}

class PaymentErrorHandler implements ErrorHandler {
  final _localizations = locator<MaLocalizations>().I;

  @override
  MakeAPaymentError handle(MakePaymentErrorResponse errorResponse) {
    /*
      An example of the data we expect to handle here:
      Notice that the error contains HTML.. We may need to strip this out if we can't display as html.
      The error message should come back translated from the server and we should be able to display it to the user.

      {
        "errorCode": 3,
        "errorMessage": "The payment could not be processed.",
        "errorDetails": {
          "error":"Unable to make a payment on your account.\<br /\>Please contact your community manager."
        }
      }

    */

    String? rawErrorString = errorResponse.errorDetails['error'];
    var title = _localizations.paymentErrorGeneralTitle;
    var messageFallback = _localizations.paymentErrorGeneralMessage;
    return MakeAPaymentError(
      errorCode: errorResponse.errorCode,
      title: title,
      message: rawErrorString ?? messageFallback
    );
  }
}

class PreviousPaymentAmountErrorHandler implements ErrorHandler {
  final _localizations = locator<MaLocalizations>().I;
  final _currencyFormat = locator<NumberFormatterHelper>().currencyFormat;

  @override
  MakeAPaymentError handle(MakePaymentErrorResponse errorResponse) {
    /*
      An example of the data we expect to handle here:
      {
        "errorCode": 4,
        "errorMessage": "A payment has already been made. Are you sure you want to submit another payment?",
        "errorDetails": {
          "previousPaymentAmount": "2732.6100",
          "previousPaymentDateTime": "10/25/2024 1:52:48 AM"
        }
      }
    */

    String? dateTimeString = errorResponse.errorDetails['previousPaymentDateTime'];
    String formattedDate = "";
    if(dateTimeString != null) {
      DateFormat dateFormat = DateFormat('MM/dd/yyyy');
      DateTime date = dateFormat.parse(dateTimeString);
      formattedDate = dateFormat.format(date);
    }

    String? previousPaymentAmount = errorResponse.errorDetails['previousPaymentAmount'];
    String formattedPaymentAmount = "";
    if(previousPaymentAmount != null) {
      formattedPaymentAmount = '\$${_currencyFormat.format(double.parse(previousPaymentAmount))}';
    }

    var title = _localizations.paymentErrorPreviousPaymentTitle;
    var message = _localizations.paymentErrorPreviousPaymentMessage(formattedPaymentAmount, formattedDate);
    var okButtonText = _localizations.paymentErrorPreviousPaymentButton;

    return MakeAPaymentError(
      errorCode: errorResponse.errorCode,
      title: title,
      message: message,
      okButtonText: okButtonText
    );

  }
}

class MakeAPaymentErrorResult {
  final MAError error;
  final MakeAPaymentError? makeAPaymentError;

  MakeAPaymentErrorResult({required this.error, this.makeAPaymentError});
}

class MakeAPaymentError {
  MakePaymentErrorCode errorCode;
  String title;
  String message;
  String? okButtonText;

  MakeAPaymentError({required this.errorCode, required this.title, required this.message, this.okButtonText});
}