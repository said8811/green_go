// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pouse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PauseModelImpl _$$PauseModelImplFromJson(Map<String, dynamic> json) =>
    _$PauseModelImpl(
      id: json['id'] as int,
      startAt: JsonHelpers.stringToDateTime(json['startAt']),
      finishedAt: JsonHelpers.stringToDateTime(json['finishedAt']),
    );

Map<String, dynamic> _$$PauseModelImplToJson(_$PauseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startAt': instance.startAt?.toIso8601String(),
      'finishedAt': instance.finishedAt?.toIso8601String(),
    };
