// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RideModelImpl _$$RideModelImplFromJson(Map<String, dynamic> json) =>
    _$RideModelImpl(
      id: json['id'] as int,
      bicycleId: json['bicycleId'] as int,
      lockerId: json['lockerId'] as int,
      userId: json['userId'] as int,
      qrCode: json['qrCode'] as String? ?? '',
      pricePerMinute: JsonHelpers.intToDouble(json['pricePerMinute']),
      pausePricePerMinute: JsonHelpers.intToDouble(json['pausePricePerMinute']),
      startPrice: JsonHelpers.intToDouble(json['startPrice']),
      startPoint:
          LatLongModel.fromJson(json['startPoint'] as Map<String, dynamic>),
      endPoint: LatLongModel.fromJson(json['endPoint'] as Map<String, dynamic>),
      tariff: json['tariff'] == null
          ? null
          : TarifModel.fromJson(json['tariff'] as Map<String, dynamic>),
      startAt: JsonHelpers.stringToDateTime(json['startAt']),
      finishedAt: JsonHelpers.stringToDateTime(json['finishedAt']),
      image: json['image'] as String? ?? '',
      pauseTime: json['pauseTime'] as int? ?? 0,
      status: json['status'] as int? ?? 0,
      ridingTime: json['ridingTime'] as int? ?? 0,
      pause: json['pause'] == null
          ? null
          : PauseModel.fromJson(json['pause'] as Map<String, dynamic>),
      total: json['total'] == null ? 0 : JsonHelpers.intToDouble(json['total']),
      coordinates: json['coordinates'] == null
          ? []
          : JsonHelpers.queueToString(json['coordinates'] as List?),
    );

Map<String, dynamic> _$$RideModelImplToJson(_$RideModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bicycleId': instance.bicycleId,
      'lockerId': instance.lockerId,
      'userId': instance.userId,
      'qrCode': instance.qrCode,
      'pricePerMinute': instance.pricePerMinute,
      'pausePricePerMinute': instance.pausePricePerMinute,
      'startPrice': instance.startPrice,
      'startPoint': instance.startPoint,
      'endPoint': instance.endPoint,
      'tariff': instance.tariff,
      'startAt': instance.startAt?.toIso8601String(),
      'finishedAt': instance.finishedAt?.toIso8601String(),
      'image': instance.image,
      'pauseTime': instance.pauseTime,
      'status': instance.status,
      'ridingTime': instance.ridingTime,
      'pause': instance.pause,
      'total': instance.total,
      'coordinates': instance.coordinates,
    };
