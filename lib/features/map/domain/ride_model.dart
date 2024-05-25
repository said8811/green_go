// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/infrastructure/json_helpers.dart';
import 'package:green_go/features/map/domain/pouse_model.dart';
import 'package:green_go/features/map/domain/tarif_model.dart';

part 'ride_model.freezed.dart';
part 'ride_model.g.dart';

@freezed
class RideModel with _$RideModel {
  factory RideModel({
    required int id,
    @JsonKey(defaultValue: "") required String qrCode,
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double pricePerMinute,
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double pausePricePerMinute,
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double startPrice,
    required TarifModel? tariff,
    @JsonKey(fromJson: JsonHelpers.stringToDateTime) DateTime? startAt,
    @JsonKey(fromJson: JsonHelpers.stringToDateTime) DateTime? finishedAt,
    @JsonKey(defaultValue: "") required String image,
    @JsonKey(defaultValue: 0) required int pauseTime,
    @JsonKey(defaultValue: 0) required int status,
    @JsonKey(defaultValue: 0) required int ridingTime,
    required PauseModel? pause,
    @JsonKey(defaultValue: 0, fromJson: JsonHelpers.intToDouble) required double total,
    @JsonKey(defaultValue: [], fromJson: JsonHelpers.queueToString) required List<String> coordinates,
  }) = _RideModel;

  factory RideModel.fromJson(Map<String, dynamic> json) => _$RideModelFromJson(json);
}
