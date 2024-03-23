import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_model.freezed.dart';

@freezed
class ActionModel with _$ActionModel {
  const ActionModel._();
  const factory ActionModel({
    required String title,
    required VoidCallback action,
  }) = _ActionModel;
}
