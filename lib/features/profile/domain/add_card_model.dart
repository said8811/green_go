// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/infrastructure/json_helpers.dart';

part 'add_card_model.freezed.dart';
part 'add_card_model.g.dart';

@freezed
class AddCardModel with _$AddCardModel {
  factory AddCardModel({
    required int? cardId,
    required String phone,
    @JsonKey(defaultValue: "", fromJson: JsonHelpers.intToString)
    required String wait,
  }) = _AddCardModel;

  factory AddCardModel.fromJson(Map<String, dynamic> json) =>
      _$AddCardModelFromJson(json);

  factory AddCardModel.initial() =>
      AddCardModel(cardId: null, phone: "", wait: "");
}
