// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['id'] as int,
      image: json['image'] as String,
      nameRu: json['nameRu'] as String? ?? '',
      nameEn: json['nameEn'] as String? ?? '',
      nameUz: json['nameUz'] as String? ?? '',
      transports: (json['transports'] as List<dynamic>?)
              ?.map((e) => TransportModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      type: json['type'] as String,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'nameRu': instance.nameRu,
      'nameEn': instance.nameEn,
      'nameUz': instance.nameUz,
      'transports': instance.transports,
      'type': instance.type,
    };
