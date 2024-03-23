// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/infrastructure/json_helpers.dart';

part 'coordinate_model.freezed.dart';
part 'coordinate_model.g.dart';

@freezed
class CordinateModel with _$CordinateModel {
  factory CordinateModel({
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double latitude,
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double longitude,
  }) = _CordinateModel;

  factory CordinateModel.fromJson(Map<String, dynamic> json) =>
      _$CordinateModelFromJson(json);
}
