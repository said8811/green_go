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
      startMinute: json['startMinute'] as int? ?? 0,
      reservedAmount: json['reservedAmount'] as int? ?? 0,
      activateCount: json['activateCount'] as int? ?? 0,
      price: json['price'] as int? ?? 0,
      startPrice: json['startPrice'] as int? ?? 0,
      pricePerMinute: json['pricePerMinute'] as int? ?? 0,
      pausePricePerMinute: json['pausePricePerMinute'] as int? ?? 0,
      tariffFields: (json['tariffFields'] as List<dynamic>?)
              ?.map((e) => TarifFieldModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      tariffInfo: json['tariffInfo'] == null
          ? TarifInfoModel.initial()
          : TarifInfoModel.fromJson(json['tariffInfo'] as Map<String, dynamic>),
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
      'tariffFields': instance.tariffFields,
      'tariffInfo': instance.tariffInfo,
    };
