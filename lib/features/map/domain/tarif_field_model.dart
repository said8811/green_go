import 'package:freezed_annotation/freezed_annotation.dart';

part 'tarif_field_model.freezed.dart';
part 'tarif_field_model.g.dart';

@freezed
class TarifFieldModel with _$TarifFieldModel {
  const TarifFieldModel._();
  factory TarifFieldModel(
      {@JsonKey(defaultValue: '') required String nameRu,
      @JsonKey(defaultValue: '') required String nameEn,
      @JsonKey(defaultValue: '') required String nameUz,
      @JsonKey(defaultValue: '') required String unitRu,
      @JsonKey(defaultValue: '') required String unitEn,
      @JsonKey(defaultValue: '') required String unitUz,
      required int price}) = _TarifFieldModel;

  factory TarifFieldModel.fromJson(Map<String, dynamic> json) => _$TarifFieldModelFromJson(json);

  String getName(String localeName) {
    switch (localeName) {
      case 'uz':
        return nameUz;
      case 'ru':
        return nameRu;
      case 'en':
        return nameEn;
      default:
        return nameRu;
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
