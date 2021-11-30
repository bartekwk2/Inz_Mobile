class AuthException implements Exception {
  final String errorMessage;
  final int errorCode;
  AuthException({required this.errorMessage, required this.errorCode});
}
