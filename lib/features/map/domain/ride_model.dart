// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/domain/lat_long_model.dart';
import 'package:green_go/features/core/infrastructure/json_helpers.dart';

part 'ride_model.freezed.dart';
part 'ride_model.g.dart';

@freezed
class RideModel with _$RideModel {
  factory RideModel({
    required int id,
    required int bicycleId,
    required int lockerId,
    required int userId,
    required String qrCode,
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double pricePerMinute,
    @JsonKey(fromJson: JsonHelpers.intToDouble)
    required double pausePricePerMinute,
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double startPrice,
    required LatLongModel startPoint,
    required LatLongModel endPoint,
  }) = _RideModel;

  factory RideModel.fromJson(Map<String, dynamic> json) =>
      _$RideModelFromJson(json);
}
