class Billings {
  final List<Billing> billings;

  const Billings({
    required this.billings,
  });

  static const empty = Billings(
    billings: [],
  );
}

class Billing {
  final String id;
  final int invoiceMonth;
  final int invoiceYear;

  const Billing({
    required this.id,
    required this.invoiceMonth,
    required this.invoiceYear,
  });

  static const empty = Billing(
    id: "",
    invoiceMonth: 0,
    invoiceYear: 0,
  );
}
