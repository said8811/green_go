// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qa_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QACategoryModelImpl _$$QACategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QACategoryModelImpl(
      nameRu: json['nameRu'] as String,
      nameUz: json['nameUz'] as String,
      nameEn: json['nameEn'] as String,
      answers: (json['answers'] as List<dynamic>?)
              ?.map((e) => AnswerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$QACategoryModelImplToJson(
        _$QACategoryModelImpl instance) =>
    <String, dynamic>{
      'nameRu': instance.nameRu,
      'nameUz': instance.nameUz,
      'nameEn': instance.nameEn,
      'answers': instance.answers,
    };
