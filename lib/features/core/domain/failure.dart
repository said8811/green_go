import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/domain/errors.dart';

part 'failure.freezed.dart';

abstract class AppMessage {}

@freezed
class Success with _$Success implements AppMessage {
  const Success._();
  const factory Success() = _Success;

  const factory Success.general([String? message]) = _General;

  @override
  String toString() {
    return when(
      () => SuccessStrings.general,
      general: (message) => message ?? SuccessStrings.general,
    );
  }
}

@freezed
class Failure with _$Failure implements AppMessage {
  const Failure._();
  const factory Failure() = _Failure;

  const factory Failure.server([String? message]) = _Server;
  const factory Failure.noConnection() = _NoConnection;
  const factory Failure.local([String? message]) = _Local;
  const factory Failure.fatalError() = _Fatal;

  @override
  String toString() {
    return when(
      () => ErrorStrings.generalError,
      noConnection: () => ErrorStrings.noConnectionError,
      server: (message) => message ?? ErrorStrings.generalError,
      fatalError: () => ErrorStrings.generalError,
      local: (message) => message ?? ErrorStrings.generalError,
    );
  }
}
