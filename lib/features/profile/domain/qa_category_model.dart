// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'answer_model.dart';

part 'qa_category_model.freezed.dart';
part 'qa_category_model.g.dart';

@freezed
class QACategoryModel with _$QACategoryModel {
  const QACategoryModel._();
  factory QACategoryModel({
    required String nameRu,
    required String nameUz,
    required String nameEn,
    @JsonKey(defaultValue: []) required List<AnswerModel> answers,
  }) = _QACategoryModel;

  factory QACategoryModel.fromJson(Map<String, dynamic> json) => _$QACategoryModelFromJson(json);

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
}
