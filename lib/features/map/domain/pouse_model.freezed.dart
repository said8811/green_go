// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pouse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PauseModel _$PauseModelFromJson(Map<String, dynamic> json) {
  return _PauseModel.fromJson(json);
}

/// @nodoc
mixin _$PauseModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: JsonHelpers.stringToDateTime)
  DateTime? get startAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: JsonHelpers.stringToDateTime)
  DateTime? get finishedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PauseModelCopyWith<PauseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PauseModelCopyWith<$Res> {
  factory $PauseModelCopyWith(
          PauseModel value, $Res Function(PauseModel) then) =
      _$PauseModelCopyWithImpl<$Res, PauseModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime) DateTime? startAt,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime) DateTime? finishedAt});
}

/// @nodoc
class _$PauseModelCopyWithImpl<$Res, $Val extends PauseModel>
    implements $PauseModelCopyWith<$Res> {
  _$PauseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startAt = freezed,
    Object? finishedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PauseModelImplCopyWith<$Res>
    implements $PauseModelCopyWith<$Res> {
  factory _$$PauseModelImplCopyWith(
          _$PauseModelImpl value, $Res Function(_$PauseModelImpl) then) =
      __$$PauseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime) DateTime? startAt,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime) DateTime? finishedAt});
}

/// @nodoc
class __$$PauseModelImplCopyWithImpl<$Res>
    extends _$PauseModelCopyWithImpl<$Res, _$PauseModelImpl>
    implements _$$PauseModelImplCopyWith<$Res> {
  __$$PauseModelImplCopyWithImpl(
      _$PauseModelImpl _value, $Res Function(_$PauseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startAt = freezed,
    Object? finishedAt = freezed,
  }) {
    return _then(_$PauseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PauseModelImpl implements _PauseModel {
  _$PauseModelImpl(
      {required this.id,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime) required this.startAt,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime)
      required this.finishedAt});

  factory _$PauseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PauseModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(fromJson: JsonHelpers.stringToDateTime)
  final DateTime? startAt;
  @override
  @JsonKey(fromJson: JsonHelpers.stringToDateTime)
  final DateTime? finishedAt;

  @override
  String toString() {
    return 'PauseModel(id: $id, startAt: $startAt, finishedAt: $finishedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PauseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.finishedAt, finishedAt) ||
                other.finishedAt == finishedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, startAt, finishedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PauseModelImplCopyWith<_$PauseModelImpl> get copyWith =>
      __$$PauseModelImplCopyWithImpl<_$PauseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PauseModelImplToJson(
      this,
    );
  }
}

abstract class _PauseModel implements PauseModel {
  factory _PauseModel(
      {required final int id,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime)
      required final DateTime? startAt,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime)
      required final DateTime? finishedAt}) = _$PauseModelImpl;

  factory _PauseModel.fromJson(Map<String, dynamic> json) =
      _$PauseModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(fromJson: JsonHelpers.stringToDateTime)
  DateTime? get startAt;
  @override
  @JsonKey(fromJson: JsonHelpers.stringToDateTime)
  DateTime? get finishedAt;
  @override
  @JsonKey(ignore: true)
  _$$PauseModelImplCopyWith<_$PauseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
