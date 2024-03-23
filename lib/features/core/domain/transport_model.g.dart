// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransportModelImpl _$$TransportModelImplFromJson(Map<String, dynamic> json) =>
    _$TransportModelImpl(
      id: json['id'] as int,
      latitude: json['latitude'] == null
          ? 0.0
          : JsonHelpers.intToDouble(json['latitude']),
      longitude: json['longitude'] == null
          ? 0.0
          : JsonHelpers.intToDouble(json['longitude']),
      name: json['name'] as String? ?? '',
      number: json['number'] as String? ?? '',
      qrCode: json['qrCode'] as String? ?? '',
    );

Map<String, dynamic> _$$TransportModelImplToJson(
        _$TransportModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'name': instance.name,
      'number': instance.number,
      'qrCode': instance.qrCode,
    };
