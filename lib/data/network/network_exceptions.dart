class ApiException implements Exception {
  final String message;
  final int? statusCode;

  ApiException(this.message, this.statusCode);

  @override
  String toString() {
    return 'ApiException: $message ($statusCode)';
  }
}

class NetworkException extends ApiException {
  NetworkException(String message, int statusCode) : super(message, statusCode);
}

class ServerException extends ApiException {
  ServerException(String message, int? statusCode) : super(message, statusCode);
}

class TimeoutException extends ApiException {
  TimeoutException(String message, int statusCode) : super(message, statusCode);
}
