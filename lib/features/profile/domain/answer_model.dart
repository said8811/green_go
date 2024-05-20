import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_model.freezed.dart';
part 'answer_model.g.dart';

@freezed
class AnswerModel with _$AnswerModel {
  const AnswerModel._();
  factory AnswerModel({
    required String nameRu,
    required String nameUz,
    required String nameEn,
    required String descriptionRu,
    required String descriptionUz,
    required String descriptionEn,
  }) = _AnswerModel;

  factory AnswerModel.fromJson(Map<String, dynamic> json) => _$AnswerModelFromJson(json);

  String getTitle(String languageCode) {
    switch (languageCode) {
      case 'ru':
        return nameRu;
      case 'uz':
        return nameUz;
      case 'en':
        return nameEn;
      default:
        return nameRu;
    }
  }

  String getDesctiption(String languageCode) {
    switch (languageCode) {
      case 'ru':
        return descriptionRu;
      case 'uz':
        return descriptionUz;
      case 'en':
        return descriptionEn;
      default:
        return descriptionRu;
    }
  }
}
