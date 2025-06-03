import 'package:flutter/widgets.dart';
import 'package:resident_app/core/shared/extensions/context_extensions.dart';

class Illustrations {
//TODO: Centralize assets data source to this

//Core illustrations
  static const coreAutopay = 'assets/illustrations/core/autopay.svg';
  static const coreNoPaymentDue =
      'assets/illustrations/core/no-payment-due.svg';
  static const corePayByText = 'assets/illustrations/core/pay-by-text.svg';
  static const coreNewPaymentAccount =
      'assets/illustrations/core/new-payment-account.svg';
  static const coreTaskComplete = 'assets/illustrations/core/task-complete.svg';

//WhiteLabel illustrations
  static const whiteLabelAutopay =
      'assets/illustrations/white_label/autopay.svg';
  static const whiteLabelNoPaymentDue =
      'assets/illustrations/white_label/no-payment-due.svg';
  static const whiteLabelPayByText =
      'assets/illustrations/white_label/pay-by-text.svg';
  static const whiteLabelNewPaymentAccount =
      'assets/illustrations/white_label/new-payment-account.svg';
  static const whiteLabelTaskComplete =
      'assets/illustrations/white_label/task-complete.svg';

//Getters
  static String autopay(BuildContext context) =>
      context.isWhiteLabel() ? whiteLabelAutopay : coreAutopay;
  static String noPaymentDue(BuildContext context) =>
      context.isWhiteLabel() ? whiteLabelNoPaymentDue : coreNoPaymentDue;
  static String payByText(BuildContext context) =>
      context.isWhiteLabel() ? whiteLabelPayByText : corePayByText;
  static String newPaymentAccount(BuildContext context) => context.isWhiteLabel()
      ? whiteLabelNewPaymentAccount
      : coreNewPaymentAccount;
  static String taskComplete(BuildContext context) =>
      context.isWhiteLabel() ? whiteLabelTaskComplete : coreTaskComplete;
}
