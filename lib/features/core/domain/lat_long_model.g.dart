// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lat_long_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LatLongModelImpl _$$LatLongModelImplFromJson(Map<String, dynamic> json) =>
    _$LatLongModelImpl(
      latitude: JsonHelpers.intToDouble(json['latitude']),
      longitude: JsonHelpers.intToDouble(json['longitude']),
    );

Map<String, dynamic> _$$LatLongModelImplToJson(_$LatLongModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
