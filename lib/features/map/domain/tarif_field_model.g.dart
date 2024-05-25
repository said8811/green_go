// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarif_field_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TarifFieldModelImpl _$$TarifFieldModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TarifFieldModelImpl(
      nameRu: json['nameRu'] as String? ?? '',
      nameEn: json['nameEn'] as String? ?? '',
      nameUz: json['nameUz'] as String? ?? '',
      unitRu: json['unitRu'] as String? ?? '',
      unitEn: json['unitEn'] as String? ?? '',
      unitUz: json['unitUz'] as String? ?? '',
      price: json['price'] as int,
    );

Map<String, dynamic> _$$TarifFieldModelImplToJson(
        _$TarifFieldModelImpl instance) =>
    <String, dynamic>{
      'nameRu': instance.nameRu,
      'nameEn': instance.nameEn,
      'nameUz': instance.nameUz,
      'unitRu': instance.unitRu,
      'unitEn': instance.unitEn,
      'unitUz': instance.unitUz,
      'price': instance.price,
    };
