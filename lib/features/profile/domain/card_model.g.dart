// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardModelImpl _$$CardModelImplFromJson(Map<String, dynamic> json) =>
    _$CardModelImpl(
      id: json['id'] as int,
      userId: json['userId'] as int,
      number: json['number'] as String,
      expire: json['expire'] as String,
      isVerified: json['isVerified'] as bool,
    );

Map<String, dynamic> _$$CardModelImplToJson(_$CardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'number': instance.number,
      'expire': instance.expire,
      'isVerified': instance.isVerified,
    };
