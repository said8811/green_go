// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActionModel {
  String get title => throw _privateConstructorUsedError;
  VoidCallback get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActionModelCopyWith<ActionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionModelCopyWith<$Res> {
  factory $ActionModelCopyWith(
          ActionModel value, $Res Function(ActionModel) then) =
      _$ActionModelCopyWithImpl<$Res, ActionModel>;
  @useResult
  $Res call({String title, VoidCallback action});
}

/// @nodoc
class _$ActionModelCopyWithImpl<$Res, $Val extends ActionModel>
    implements $ActionModelCopyWith<$Res> {
  _$ActionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActionModelImplCopyWith<$Res>
    implements $ActionModelCopyWith<$Res> {
  factory _$$ActionModelImplCopyWith(
          _$ActionModelImpl value, $Res Function(_$ActionModelImpl) then) =
      __$$ActionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, VoidCallback action});
}

/// @nodoc
class __$$ActionModelImplCopyWithImpl<$Res>
    extends _$ActionModelCopyWithImpl<$Res, _$ActionModelImpl>
    implements _$$ActionModelImplCopyWith<$Res> {
  __$$ActionModelImplCopyWithImpl(
      _$ActionModelImpl _value, $Res Function(_$ActionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? action = null,
  }) {
    return _then(_$ActionModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$ActionModelImpl extends _ActionModel {
  const _$ActionModelImpl({required this.title, required this.action})
      : super._();

  @override
  final String title;
  @override
  final VoidCallback action;

  @override
  String toString() {
    return 'ActionModel(title: $title, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionModelImplCopyWith<_$ActionModelImpl> get copyWith =>
      __$$ActionModelImplCopyWithImpl<_$ActionModelImpl>(this, _$identity);
}

abstract class _ActionModel extends ActionModel {
  const factory _ActionModel(
      {required final String title,
      required final VoidCallback action}) = _$ActionModelImpl;
  const _ActionModel._() : super._();

  @override
  String get title;
  @override
  VoidCallback get action;
  @override
  @JsonKey(ignore: true)
  _$$ActionModelImplCopyWith<_$ActionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
