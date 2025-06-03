class Announcement {
  const Announcement({
    required this.id,
    required this.subject,
    required this.body,
    required this.order,
    required this.isCompanyWide,
    required this.start,
    required this.end,
    required this.isRead,
  });

  final String id;
  final String subject;
  final String body;
  final int order;
  final bool isCompanyWide;
  final DateTime start;
  final DateTime end;
  final bool isRead;
}
