class PaymentDateHelper {
  late String paymentMonth;

  late int paymentYear;

  PaymentDateHelper(int day) {
    getPaymentMonthYear(day);
  }

  getPaymentMonthYear(int day) {
    final selectedPaymentDay = day;
    final now = DateTime.now();
    final currentDay = now.day;
    final currentMonth = now.month;
    final currentYear = now.year;

    final nextMonth = currentMonth == 12 ? 1 : currentMonth + 1;
    final nextYear = nextMonth == 1 ? currentYear + 1 : currentYear;

    if (currentDay < selectedPaymentDay) {
      paymentMonth = currentMonth.toString();
      paymentYear = currentYear;
    } else if (currentDay > selectedPaymentDay ||
        currentDay == selectedPaymentDay) {
      paymentMonth = nextMonth.toString();
      paymentYear = nextYear;
    }
  }
}
