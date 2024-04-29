// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookModelImpl _$$BookModelImplFromJson(Map<String, dynamic> json) =>
    _$BookModelImpl(
      bicycleId: json['bicycleId'] as int,
      finishAt: json['finishAt'] as String,
      qrCode: json['qrCode'] as String,
      coordinate: json['coordinate'] == null
          ? null
          : LatLongModel.fromJson(json['coordinate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookModelImplToJson(_$BookModelImpl instance) =>
    <String, dynamic>{
      'bicycleId': instance.bicycleId,
      'finishAt': instance.finishAt,
      'qrCode': instance.qrCode,
      'coordinate': instance.coordinate,
    };
