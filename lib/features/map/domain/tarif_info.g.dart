// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarif_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TarifInfoModelImpl _$$TarifInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$TarifInfoModelImpl(
      nameRu: json['nameRu'] as String? ?? '',
      nameUz: json['nameUz'] as String? ?? '',
      nameEn: json['nameEn'] as String? ?? '',
      descriptionRu: json['descriptionRu'] as String? ?? '',
      descriptionUz: json['descriptionUz'] as String? ?? '',
      descriptionEn: json['descriptionEn'] as String? ?? '',
      unitRu: json['unitRu'] as String? ?? '',
      unitEn: json['unitEn'] as String? ?? '',
      unitUz: json['unitUz'] as String? ?? '',
      price: json['price'] as int,
    );

Map<String, dynamic> _$$TarifInfoModelImplToJson(
        _$TarifInfoModelImpl instance) =>
    <String, dynamic>{
      'nameRu': instance.nameRu,
      'nameUz': instance.nameUz,
      'nameEn': instance.nameEn,
      'descriptionRu': instance.descriptionRu,
      'descriptionUz': instance.descriptionUz,
      'descriptionEn': instance.descriptionEn,
      'unitRu': instance.unitRu,
      'unitEn': instance.unitEn,
      'unitUz': instance.unitUz,
      'price': instance.price,
    };
