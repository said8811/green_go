// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/infrastructure/json_helpers.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required int id,
    required String name,
    required String phone,
    @JsonKey(fromJson: JsonHelpers.intToDouble) required double balance,
    @JsonKey(defaultValue: "") required String language,
    @JsonKey(defaultValue: "") required String image,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
}
