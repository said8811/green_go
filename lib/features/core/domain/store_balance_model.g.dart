// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_balance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreBalanceModelImpl _$$StoreBalanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StoreBalanceModelImpl(
      id: json['id'] as String,
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$StoreBalanceModelImplToJson(
        _$StoreBalanceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'balance': instance.balance,
    };
