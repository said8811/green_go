// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/domain/category_model.dart';

import 'coordinate_model.dart';
import 'station_model.dart';

part 'reference_model.freezed.dart';
part 'reference_model.g.dart';

@freezed
class ReferenceModel with _$ReferenceModel {
  factory ReferenceModel({
    @JsonKey(defaultValue: [])
    required List<List<CordinateModel>> availableCoordinates,
    @JsonKey(defaultValue: []) required List<CategoryModel> categories,
    @JsonKey(defaultValue: [])
    required List<List<CordinateModel>> prohibitedCoordinates,
    @JsonKey(defaultValue: 0) required int regionId,
    @JsonKey(defaultValue: "") required String regionName,
    @JsonKey(defaultValue: []) required List<StationModel> stations,
  }) = _ReferenceModel;

  factory ReferenceModel.fromJson(Map<String, dynamic> json) =>
      _$ReferenceModelFromJson(json);
}
