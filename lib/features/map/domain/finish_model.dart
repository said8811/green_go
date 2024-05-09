// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/map/domain/tarif_model.dart';

part 'finish_model.freezed.dart';
part 'finish_model.g.dart';

@freezed
class FinishModel with _$FinishModel {
  factory FinishModel({
    required int id,
    required TarifModel tariff,
    @JsonKey(defaultValue: 0) required int startPrice,
    @JsonKey(defaultValue: 0) required int pricePerMinute,
    @JsonKey(defaultValue: 0) required int pausePricePerMinute,
    @JsonKey(defaultValue: 0) required int total,
    @JsonKey(defaultValue: 0) required int ridingTime,
    @JsonKey(defaultValue: 0) required int pouseTime,
  }) = _FinishModel;

  factory FinishModel.fromJson(Map<String, dynamic> json) => _$FinishModelFromJson(json);
}
