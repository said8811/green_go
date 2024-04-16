// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCardModelImpl _$$AddCardModelImplFromJson(Map<String, dynamic> json) =>
    _$AddCardModelImpl(
      cardId: json['cardId'] as int?,
      phone: json['phone'] as String,
      wait: json['wait'] == null ? '' : JsonHelpers.intToString(json['wait']),
    );

Map<String, dynamic> _$$AddCardModelImplToJson(_$AddCardModelImpl instance) =>
    <String, dynamic>{
      'cardId': instance.cardId,
      'phone': instance.phone,
      'wait': instance.wait,
    };
