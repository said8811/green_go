// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../infrastructure/hive_datastore.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
@HiveType(typeId: HiveDataStore.userTypeId)
class UserModel with _$UserModel {
  const factory UserModel({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) required String phone,
    @HiveField(3) @JsonKey(defaultValue: "") required String lang,
    @HiveField(4) required String accessToken,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
