// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/domain/lat_long_model.dart';
import 'package:green_go/features/core/infrastructure/json_helpers.dart';
import 'package:green_go/features/map/domain/tarif_model.dart';

part 'ride_model.freezed.dart';
part 'ride_model.g.dart';

@freezed
class RideModel with _$RideModel {
  factory RideModel({
    required int id,
    required int bicycleId,
    required int lockerId,
    required int userId,
    @JsonKey(defaultValue: "") required String qrCode,
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double pricePerMinute,
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double pausePricePerMinute,
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double startPrice,
    required LatLongModel startPoint,
    required LatLongModel endPoint,
    required TarifModel? tariff,
    @JsonKey(defaultValue: "") required String startAt,
    @JsonKey(defaultValue: "") required String finishedAt,
    @JsonKey(defaultValue: "") required String image,
    @JsonKey(defaultValue: 0) required int pouseTime,
    @JsonKey(defaultValue: 0) required int ridingTime,
    @JsonKey(defaultValue: 0, fromJson: JsonHelpers.intToDouble) required double total,
    @JsonKey(defaultValue: [], fromJson: JsonHelpers.queueToString) required List<String> coordinates,
  }) = _RideModel;

  factory RideModel.fromJson(Map<String, dynamic> json) => _$RideModelFromJson(json);
}
