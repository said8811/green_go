// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinishModelImpl _$$FinishModelImplFromJson(Map<String, dynamic> json) =>
    _$FinishModelImpl(
      id: json['id'] as int,
      tariff: TarifModel.fromJson(json['tariff'] as Map<String, dynamic>),
      startPrice: json['startPrice'] as int? ?? 0,
      pricePerMinute: json['pricePerMinute'] as int? ?? 0,
      pausePricePerMinute: json['pausePricePerMinute'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
      ridingTime: json['ridingTime'] as int? ?? 0,
      pouseTime: json['pouseTime'] as int? ?? 0,
    );

Map<String, dynamic> _$$FinishModelImplToJson(_$FinishModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tariff': instance.tariff,
      'startPrice': instance.startPrice,
      'pricePerMinute': instance.pricePerMinute,
      'pausePricePerMinute': instance.pausePricePerMinute,
      'total': instance.total,
      'ridingTime': instance.ridingTime,
      'pouseTime': instance.pouseTime,
    };
