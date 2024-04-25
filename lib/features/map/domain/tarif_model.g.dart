// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarif_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TarifModelImpl _$$TarifModelImplFromJson(Map<String, dynamic> json) =>
    _$TarifModelImpl(
      id: json['id'] as int,
      nameRu: json['nameRu'] as String? ?? '',
      nameUz: json['nameUz'] as String? ?? '',
      nameEn: json['nameEn'] as String? ?? '',
      descriptionRu: json['descriptionRu'] as String? ?? '',
      descriptionUz: json['descriptionUz'] as String? ?? '',
      descriptionEn: json['descriptionEn'] as String? ?? '',
      startMinute: json['startMinute'] as int,
      reservedAmount: json['reservedAmount'] as int,
      activateCount: json['activateCount'] as int,
      price: json['price'] as int,
      startPrice: json['startPrice'] as int,
      pricePerMinute: json['pricePerMinute'] as int,
      pausePricePerMinute: json['pausePricePerMinute'] as int,
    );

Map<String, dynamic> _$$TarifModelImplToJson(_$TarifModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameRu': instance.nameRu,
      'nameUz': instance.nameUz,
      'nameEn': instance.nameEn,
      'descriptionRu': instance.descriptionRu,
      'descriptionUz': instance.descriptionUz,
      'descriptionEn': instance.descriptionEn,
      'startMinute': instance.startMinute,
      'reservedAmount': instance.reservedAmount,
      'activateCount': instance.activateCount,
      'price': instance.price,
      'startPrice': instance.startPrice,
      'pricePerMinute': instance.pricePerMinute,
      'pausePricePerMinute': instance.pausePricePerMinute,
    };
