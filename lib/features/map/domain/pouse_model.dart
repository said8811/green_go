// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/infrastructure/json_helpers.dart';

part 'pouse_model.freezed.dart';
part 'pouse_model.g.dart';

@freezed
class PauseModel with _$PauseModel {
  factory PauseModel({
    required int id,
    @JsonKey(fromJson: JsonHelpers.stringToDateTime) required DateTime? startAt,
    @JsonKey(fromJson: JsonHelpers.stringToDateTime) required DateTime? finishedAt,
  }) = _PauseModel;

  factory PauseModel.fromJson(Map<String, dynamic> json) => _$PauseModelFromJson(json);
}
