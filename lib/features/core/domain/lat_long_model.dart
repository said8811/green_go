// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/infrastructure/json_helpers.dart';

part 'lat_long_model.freezed.dart';
part 'lat_long_model.g.dart';

@freezed
class LatLongModel with _$LatLongModel {
  factory LatLongModel({
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double latitude,
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double longitude,
  }) = _LatLongModel;

  factory LatLongModel.fromJson(Map<String, dynamic> json) =>
      _$LatLongModelFromJson(json);
}
