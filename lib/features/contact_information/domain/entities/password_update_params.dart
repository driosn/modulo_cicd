class PasswordUpdateParams {
  const PasswordUpdateParams({
    required this.residentUserId,
    required this.currentPassword,
    required this.newPassword,
  });

  final String residentUserId;
  final String currentPassword;
  final String newPassword;

  static const empty = PasswordUpdateParams(residentUserId: '',currentPassword: '', newPassword: '');
}
