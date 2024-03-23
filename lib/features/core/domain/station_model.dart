// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../infrastructure/json_helpers.dart';

part 'station_model.freezed.dart';
part 'station_model.g.dart';

@freezed
class StationModel with _$StationModel {
  factory StationModel({
    required String name,
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double latitude,
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double longitude,
  }) = _StationModel;

  factory StationModel.fromJson(Map<String, dynamic> json) =>
      _$StationModelFromJson(json);
}
