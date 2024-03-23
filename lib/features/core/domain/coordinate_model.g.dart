// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CordinateModelImpl _$$CordinateModelImplFromJson(Map<String, dynamic> json) =>
    _$CordinateModelImpl(
      latitude: JsonHelpers.intToDouble(json['latitude']),
      longitude: JsonHelpers.intToDouble(json['longitude']),
    );

Map<String, dynamic> _$$CordinateModelImplToJson(
        _$CordinateModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
