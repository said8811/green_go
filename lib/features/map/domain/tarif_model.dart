// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tarif_model.freezed.dart';
part 'tarif_model.g.dart';

@freezed
class TarifModel with _$TarifModel {
  factory TarifModel({
    required int id,
    @JsonKey(defaultValue: "") required String nameRu,
    @JsonKey(defaultValue: "") required String nameUz,
    @JsonKey(defaultValue: "") required String nameEn,
    @JsonKey(defaultValue: "") required String descriptionRu,
    @JsonKey(defaultValue: "") required String descriptionUz,
    @JsonKey(defaultValue: "") required String descriptionEn,
    required int startMinute,
    required int reservedAmount,
    required int activateCount,
    required int price,
    required int startPrice,
    required int pricePerMinute,
    required int pausePricePerMinute,
  }) = _TarifModel;

  factory TarifModel.fromJson(Map<String, dynamic> json) =>
      _$TarifModelFromJson(json);

  String getTitle(String languageCode) {
    switch (languageCode) {
      case 'ru':
        return nameRu;
      case 'uz':
        return nameUz;
      case 'en':
        return nameEn;
      default:
        return nameRu;
    }
  }
}
