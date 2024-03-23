import 'dart:developer';

import '../../features/core/shared/constants.dart';
// import 'dart:math' as math;

// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:logger/logger.dart';

class AppLog {
  AppLog._internal();

  // static final Logger _logger = Logger(
  //   level: Level.debug,
  //   printer: SimplePrinter(
  //     printTime: true,
  //   ),
  // );

  // static const _crashlyticsValueSizeLimit = 1024;
  // static bool mustLogNetwork = true;

  /// Verbose logging with required [tag]
  static void v(Object msg) {
    if (kIsProd) return;
    final stringBuffer = StringBuffer();
    // stringBuffer.write('\n*** Request ***\n');
    stringBuffer.write(msg);
    log(stringBuffer.toString());
  }

  // static void debugLog(Object msg) {
  //   _logger.log(Level.debug, msg);
  // }

  // /// Info logging with optional [tag]
  // static void i(Object msg, [String? tag, bool printStackTrace = true]) {
  //   _logger.i(_taggedMsg(msg, tag), stackTrace: printStackTrace ? StackTrace.current : null);
  // }

  // /// Debug logging with optional [tag]
  // static void d({String? tag, required Object msg}) {
  //   _logger.d(_taggedMsg(msg, tag), stackTrace: StackTrace.current);
  // }

  // /// Warning logging with option [tag]
  // static void w(Object msg, [String? tag, bool printStackTrace = true]) {
  //   _logger.w(_taggedMsg(msg, tag), stackTrace: printStackTrace ? StackTrace.current : null);
  // }

  // ///WTF logging with option [tag]
  // static void wtf(Object msg, {String? tag}) {
  //   _logger.f(msg, stackTrace: StackTrace.current);
  // }

  // ///Simple error logging with sending logs to crashlytics as [BonException]
  // static void e(Object msg, [StackTrace? stackTrace]) {
  //   _logger.e(msg, stackTrace: stackTrace ?? StackTrace.current);
  // }

  // ///Error logging for server crashdump with sending to crashlytics
  // static void reportServerCrashdump(String errorDomain, String data) {
  //   _logger.e('Server Crashdump: $errorDomain : $data');
  //   _logBackendDump(errorDomain, data);
  // }

  // static String _taggedMsg(Object msg, String? tag) {
  //   final prettyTag = tag != null ? '[$tag] ' : ' ';
  //   return '$prettyTag$msg';
  // }

  // static void _logBackendDump(String errorDomain, String data) {
  //   FirebaseCrashlytics.instance.setCustomKey('errorDomain', errorDomain);
  //   for (var offset = 0; offset < data.length; offset += AppLog._crashlyticsValueSizeLimit) {
  //     FirebaseCrashlytics.instance.setCustomKey(
  //       "dump${offset / AppLog._crashlyticsValueSizeLimit}",
  //       data.substring(offset, math.min(data.length, offset + AppLog._crashlyticsValueSizeLimit)),
  //     );
  //   }
  //   FirebaseCrashlytics.instance.recordError(errorDomain, StackTrace.fromString(errorDomain), reason: data);
  // }
}
