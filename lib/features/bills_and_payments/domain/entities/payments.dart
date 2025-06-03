class Payments {
  final List<Payment> payments;

  const Payments({
    required this.payments,
  });

  static const empty = Payments(
    payments: [],
  );
}

class Payment {
  final int transactionNumber;
  final double paymentAmount;
  final String paymentDate;
  final String payToTypeDescription;
  final int payToType;
  final String payToName;
  final String paymentTypeDescription;
  final int paymentType;
  final String loanApplicationTypeDescription;
  final int loanApplicationType;
  final String paymentStatusDescription;
  final int paymentStatus;

  const Payment({
    required this.transactionNumber,
    required this.paymentAmount,
    required this.paymentDate,
    required this.payToTypeDescription,
    required this.payToType,
    required this.payToName,
    required this.paymentTypeDescription,
    required this.paymentType,
    required this.loanApplicationTypeDescription,
    required this.loanApplicationType,
    required this.paymentStatusDescription,
    required this.paymentStatus,
  });

  static const empty = Payment(
    transactionNumber: 0,
    paymentAmount: 0,
    paymentDate: "",
    payToTypeDescription: "",
    payToType: 0,
    payToName: "",
    paymentTypeDescription: "",
    paymentType: 0,
    loanApplicationTypeDescription: "",
    loanApplicationType: 0,
    paymentStatusDescription: "",
    paymentStatus: 0,
  );
}

extension PaymentStatusExtension on Payment {
  bool get isInProgress => paymentStatus == 2;
}
