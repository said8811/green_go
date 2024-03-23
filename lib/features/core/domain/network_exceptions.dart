import 'package:green_go/features/core/domain/errors.dart';

class RestApiException implements Exception {
  final String? message;
  RestApiException([this.message]);

  factory RestApiException.connection() =>
      RestApiException(ErrorStrings.noConnectionError);
}
