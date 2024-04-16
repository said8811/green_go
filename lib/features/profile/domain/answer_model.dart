import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_model.freezed.dart';
part 'answer_model.g.dart';

@freezed
class AnswerModel with _$AnswerModel {
  factory AnswerModel({
    required String nameRu,
    required String nameUz,
    required String nameEn,
    required String descriptionRu,
    required String descriptionUz,
    required String descriptionEn,
  }) = _AnswerModel;

  factory AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerModelFromJson(json);
}
