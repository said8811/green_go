// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      phone: json['phone'] as String,
      balance: JsonHelpers.intToDouble(json['balance']),
      language: json['language'] as String? ?? '',
      image: json['image'] as String? ?? '',
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'balance': instance.balance,
      'language': instance.language,
      'image': instance.image,
    };
