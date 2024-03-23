import 'package:freezed_annotation/freezed_annotation.dart';

part 'tarif_model.freezed.dart';
part 'tarif_model.g.dart';

@freezed
class TarifModel with _$TarifModel {
  factory TarifModel({
    required int id,
    required String nameRu,
    required String nameUz,
    required String nameEn,
    required String descriptionRu,
    required String descriptionUz,
    required String descriptionEn,
    required int tariffTimeId,
    required int freeTime,
    required int startMinute,
    required int reservedAmount,
    required int activateCount,
    required int price,
    required int startPrice,
    required int pricePerMinute,
  }) = _TarifModel;

  factory TarifModel.fromJson(Map<String, dynamic> json) =>
      _$TarifModelFromJson(json);
}
