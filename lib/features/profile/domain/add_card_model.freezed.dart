// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddCardModel _$AddCardModelFromJson(Map<String, dynamic> json) {
  return _AddCardModel.fromJson(json);
}

/// @nodoc
mixin _$AddCardModel {
  int? get cardId => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "", fromJson: JsonHelpers.intToString)
  String get wait => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCardModelCopyWith<AddCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCardModelCopyWith<$Res> {
  factory $AddCardModelCopyWith(
          AddCardModel value, $Res Function(AddCardModel) then) =
      _$AddCardModelCopyWithImpl<$Res, AddCardModel>;
  @useResult
  $Res call(
      {int? cardId,
      String phone,
      @JsonKey(defaultValue: "", fromJson: JsonHelpers.intToString)
      String wait});
}

/// @nodoc
class _$AddCardModelCopyWithImpl<$Res, $Val extends AddCardModel>
    implements $AddCardModelCopyWith<$Res> {
  _$AddCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = freezed,
    Object? phone = null,
    Object? wait = null,
  }) {
    return _then(_value.copyWith(
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      wait: null == wait
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCardModelImplCopyWith<$Res>
    implements $AddCardModelCopyWith<$Res> {
  factory _$$AddCardModelImplCopyWith(
          _$AddCardModelImpl value, $Res Function(_$AddCardModelImpl) then) =
      __$$AddCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? cardId,
      String phone,
      @JsonKey(defaultValue: "", fromJson: JsonHelpers.intToString)
      String wait});
}

/// @nodoc
class __$$AddCardModelImplCopyWithImpl<$Res>
    extends _$AddCardModelCopyWithImpl<$Res, _$AddCardModelImpl>
    implements _$$AddCardModelImplCopyWith<$Res> {
  __$$AddCardModelImplCopyWithImpl(
      _$AddCardModelImpl _value, $Res Function(_$AddCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = freezed,
    Object? phone = null,
    Object? wait = null,
  }) {
    return _then(_$AddCardModelImpl(
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      wait: null == wait
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCardModelImpl implements _AddCardModel {
  _$AddCardModelImpl(
      {required this.cardId,
      required this.phone,
      @JsonKey(defaultValue: "", fromJson: JsonHelpers.intToString)
      required this.wait});

  factory _$AddCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCardModelImplFromJson(json);

  @override
  final int? cardId;
  @override
  final String phone;
  @override
  @JsonKey(defaultValue: "", fromJson: JsonHelpers.intToString)
  final String wait;

  @override
  String toString() {
    return 'AddCardModel(cardId: $cardId, phone: $phone, wait: $wait)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCardModelImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.wait, wait) || other.wait == wait));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardId, phone, wait);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCardModelImplCopyWith<_$AddCardModelImpl> get copyWith =>
      __$$AddCardModelImplCopyWithImpl<_$AddCardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCardModelImplToJson(
      this,
    );
  }
}

abstract class _AddCardModel implements AddCardModel {
  factory _AddCardModel(
      {required final int? cardId,
      required final String phone,
      @JsonKey(defaultValue: "", fromJson: JsonHelpers.intToString)
      required final String wait}) = _$AddCardModelImpl;

  factory _AddCardModel.fromJson(Map<String, dynamic> json) =
      _$AddCardModelImpl.fromJson;

  @override
  int? get cardId;
  @override
  String get phone;
  @override
  @JsonKey(defaultValue: "", fromJson: JsonHelpers.intToString)
  String get wait;
  @override
  @JsonKey(ignore: true)
  _$$AddCardModelImplCopyWith<_$AddCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
