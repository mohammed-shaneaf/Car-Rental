class ApiConstants {
  static const baseUrl = 'https://qent.up.railway.app/api';
  static const authUrl = '$baseUrl/auth';

  static const String login = '$authUrl/login/';
  static const String register = '$authUrl/register/';
  static const String logout = '$authUrl/logout/';
  static const String refreshToken = '$authUrl/token/refresh/';

  static const String passwordResetRequest = '$authUrl/password/reset/';
  static const String passwordResetConfirm = '$authUrl/password/reset/confirm/';

  static const String phoneVerifyRequest = '$authUrl/phone/verify/';
  static const String phoneVerifyConfirm = '$authUrl/phone/verify/confirm/';
}
