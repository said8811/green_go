import 'package:freezed_annotation/freezed_annotation.dart';

part 'tarif_info.freezed.dart';
part 'tarif_info.g.dart';

@freezed
class TarifInfoModel with _$TarifInfoModel {
  const TarifInfoModel._();
  factory TarifInfoModel({
    @JsonKey(defaultValue: "") required String nameRu,
    @JsonKey(defaultValue: "") required String nameUz,
    @JsonKey(defaultValue: "") required String nameEn,
    @JsonKey(defaultValue: "") required String descriptionRu,
    @JsonKey(defaultValue: "") required String descriptionUz,
    @JsonKey(defaultValue: "") required String descriptionEn,
    @JsonKey(defaultValue: '') required String unitRu,
    @JsonKey(defaultValue: '') required String unitEn,
    @JsonKey(defaultValue: '') required String unitUz,
    required int price,
  }) = _TarifInfoModel;

  factory TarifInfoModel.fromJson(Map<String, dynamic> json) => _$TarifInfoModelFromJson(json);

  factory TarifInfoModel.initial() => TarifInfoModel(
      nameRu: '',
      nameUz: '',
      nameEn: '',
      descriptionRu: '',
      descriptionUz: '',
      descriptionEn: '',
      unitRu: '',
      unitEn: '',
      unitUz: '',
      price: 0);

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

  String getDescription(String languageCode) {
    switch (languageCode) {
      case 'ru':
        return descriptionRu;
      case 'uz':
        return descriptionUz;
      case 'en':
        return descriptionEn;
      default:
        return descriptionRu;
    }
  }

  String getUnit(String localeName) {
    switch (localeName) {
      case 'uz':
        return unitUz;
      case 'ru':
        return unitRu;
      case 'en':
        return unitEn;
      default:
        return unitRu;
    }
  }
}
