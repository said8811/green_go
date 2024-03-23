// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/domain/transport_model.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    required int id,
    required String image,
    @JsonKey(defaultValue: "") required String nameRu,
    @JsonKey(defaultValue: "") required String nameEn,
    @JsonKey(defaultValue: "") required String nameUz,
    @JsonKey(defaultValue: []) required List<TransportModel> transports,
    required String type,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
