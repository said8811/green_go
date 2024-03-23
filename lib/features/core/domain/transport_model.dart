// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/infrastructure/json_helpers.dart';

part 'transport_model.freezed.dart';
part 'transport_model.g.dart';

@freezed
class TransportModel with _$TransportModel {
  factory TransportModel({
    required int id,
    @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
    required double latitude,
    @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
    required double longitude,
    @JsonKey(defaultValue: "") required String name,
    @JsonKey(defaultValue: "") required String number,
    @JsonKey(defaultValue: "") required String qrCode,
  }) = _TransportModel;

  factory TransportModel.fromJson(Map<String, dynamic> json) =>
      _$TransportModelFromJson(json);
}
