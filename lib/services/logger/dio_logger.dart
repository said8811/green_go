import 'dart:developer';

import 'package:dio/dio.dart';

class NetworkLog {
  final String url;
  final String responseLog;
  final String requestLog;
  final DateTime responseTime;
  final int statusCode;

  String get dateTimeString {
    final day = '${responseTime.day < 10 ? '0' : ''}${responseTime.day}';
    final month = '${responseTime.month < 10 ? '0' : ''}${responseTime.month}';
    final hour = '${responseTime.hour < 10 ? '0' : ''}${responseTime.hour}';
    final minute = '${responseTime.minute < 10 ? '0' : ''}${responseTime.minute}';
    final second = '${responseTime.second < 10 ? '0' : ''}${responseTime.second}';
    return '$day:$month:${responseTime.year}-$hour:$minute:$second';
  }

  NetworkLog(this.url, this.responseLog, this.requestLog, this.responseTime, this.statusCode);
}

typedef NetworkLogCallback = Function(NetworkLog log);

/// [LogInterceptor] is used to print logs during network requests.
/// It's better to add [LogInterceptor] to the tail of the interceptor queue,
/// otherwise the changes made in the interceptor behind A will not be printed out.
/// This is because the execution of interceptors is in the order of addition.
class DioLogInterceptor extends LogInterceptor {
  DioLogInterceptor({
    super.request = true,
    super.requestHeader = true,
    super.requestBody = true,
    super.responseHeader = false,
    super.responseBody = true,
    super.error = true,
    super.logPrint = print,
  });

  /// Print request [Options]

  static final Set<NetworkLogCallback> _outputCallbacks = {};

  static void addOutputListener(NetworkLogCallback callback) {
    _outputCallbacks.add(callback);
  }

  static void removeOutputListener(NetworkLogCallback callback) {
    _outputCallbacks.remove(callback);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final stringBuffer = StringBuffer();
    stringBuffer.write('\n*** Request ***\n');
    stringBuffer.write(_requestToStr(options));
    log(stringBuffer.toString());
    stringBuffer.clear();
    handler.next(options);
  }

  @override
  Future<void> onResponse(Response response, ResponseInterceptorHandler handler) async {
    final responseStr = _responseToStr(response);
    log('\n*** Response ***\n$responseStr');
    for (final element in _outputCallbacks) {
      element(_responseToNetworkLog(response));
    }
    handler.next(response);
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    final logBuffer = StringBuffer();
    logBuffer.write('\n*** DioError *** \n $err\n');
    if (err.response != null) {
      final response = err.response;
      if (response != null) {
        logBuffer.write('${_responseToStr(response)}\n');
        for (final element in _outputCallbacks) {
          element(_responseToNetworkLog(response));
        }
      }
    }

    log(logBuffer.toString());
    logBuffer.clear();
    handler.next(err);
  }

  String _requestToStr(RequestOptions options) {
    final logBuffer = StringBuffer();

    logBuffer.write('Uri: ${options.uri}');

    final requestMap = {
      'method': options.method,
      'contentType': options.contentType.toString(),
      'responseType': options.responseType.toString(),
      'followRedirects': options.followRedirects,
      'connectTimeout': options.connectTimeout,
      'receiveTimeout': options.receiveTimeout,
      'extra': options.extra,
    };

    final requestMapString = _mapToString(requestMap);
    logBuffer.write('$requestMapString \n');

    if (options.headers.isNotEmpty) {
      final headerMapString = _mapToString(options.headers);
      logBuffer.write(' Headers: $headerMapString \n');
    }

    if (requestBody && options.data != null) {
      logBuffer.write(' Data: \n');
      final data = options.data.toString();
      if (data.startsWith('{"image":')) {
        logBuffer.write('  ${data.substring(20)}...<base64 encoded image data>');
      } else {
        logBuffer.write('  $data');
      }

      logBuffer.write('\n');
    }

    final log = logBuffer.toString();
    logBuffer.clear();
    return log;
  }

  String _mapToString(Map map) {
    final stringBuffer = StringBuffer();
    map.forEach((key, v) => stringBuffer.write('\n  $key: $v'));
    return stringBuffer.toString();
  }

  String _responseToStr(Response response) {
    final responseBuffer = StringBuffer();
    responseBuffer.write(' Uri: ${response.requestOptions.uri}\n');
    responseBuffer.write(' StatusCode: ${response.statusCode}\n');
    responseBuffer.write(' Headers: \n  ${response.headers.toString().replaceAll('\n', '  \n  ')}\n');
    responseBuffer.write(' Response type: ${response.requestOptions.responseType}\n');
    if (responseBody && response.data != null) {
      if (response.requestOptions.responseType != ResponseType.bytes) {
        responseBuffer.write(' Body:\n  ${response.data}\n');
      } else {
        responseBuffer.write(' Bytes body\n');
      }
    }

    final responseStr = responseBuffer.toString();
    responseBuffer.clear();

    return responseStr;
  }

  NetworkLog _responseToNetworkLog(Response response) {
    final responseBuffer = StringBuffer();
    responseBuffer.write(' Headers: \n  ${response.headers.toString().replaceAll('\n', '  \n  ')}\n');
    responseBuffer.write(' Response type: ${response.requestOptions.responseType}\n');
    if (responseBody && response.data != null) {
      if (response.requestOptions.responseType != ResponseType.bytes) {
        responseBuffer.write(' Body:\n  ${response.data}\n');
      } else {
        responseBuffer.write(' Bytes body\n');
      }
    }

    final responseLogString = responseBuffer.toString();
    responseBuffer.clear();
    final requestLogString = _requestToStr(response.requestOptions);
    final url = response.requestOptions.uri.toString();
    final indexOfThirdSlash = url.indexOf('/', 9); // https:// .../...
    final shortUrl = url.substring(indexOfThirdSlash);

    return NetworkLog(
      shortUrl,
      responseLogString,
      requestLogString,
      DateTime.now(),
      response.statusCode ?? 500,
    );
  }
}
