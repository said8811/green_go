// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config.freezed.dart';
part 'app_config.g.dart';

@freezed
class AppConfig with _$AppConfig {
  const AppConfig._();
  const factory AppConfig({
    @JsonKey(name: 'BASE_API_URL') required String baseApiUrl,
    @JsonKey(name: 'API_KEY') required String apiKey,
  }) = _AppConfig;

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);
}
