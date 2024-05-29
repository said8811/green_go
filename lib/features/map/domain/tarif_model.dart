// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/map/domain/tarif_info.dart';

import 'tarif_field_model.dart';

part 'tarif_model.freezed.dart';
part 'tarif_model.g.dart';

@freezed
class TarifModel with _$TarifModel {
  const TarifModel._();
  factory TarifModel({
    required int id,
    @JsonKey(defaultValue: "") required String nameRu,
    @JsonKey(defaultValue: "") required String nameUz,
    @JsonKey(defaultValue: "") required String nameEn,
    @JsonKey(defaultValue: "") required String descriptionRu,
    @JsonKey(defaultValue: "") required String descriptionUz,
    @JsonKey(defaultValue: "") required String descriptionEn,
    @JsonKey(defaultValue: 0) required int startMinute,
    @JsonKey(defaultValue: 0) required int reservedAmount,
    @JsonKey(defaultValue: 0) required int activateCount,
    @JsonKey(defaultValue: 0) required int price,
    @JsonKey(defaultValue: 0) required int startPrice,
    @JsonKey(defaultValue: 0) required int pricePerMinute,
    @JsonKey(defaultValue: 0) required int pausePricePerMinute,
    @JsonKey(defaultValue: []) required List<TarifFieldModel> tariffFields,
    @JsonKey(defaultValue: TarifInfoModel.initial) required TarifInfoModel tariffInfo,
  }) = _TarifModel;

  factory TarifModel.fromJson(Map<String, dynamic> json) => _$TarifModelFromJson(json);

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
