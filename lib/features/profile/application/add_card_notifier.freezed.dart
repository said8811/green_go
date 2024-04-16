// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_card_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddCardState {
  bool get isLoading => throw _privateConstructorUsedError;
  AddCardModel get data => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCardStateCopyWith<AddCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCardStateCopyWith<$Res> {
  factory $AddCardStateCopyWith(
          AddCardState value, $Res Function(AddCardState) then) =
      _$AddCardStateCopyWithImpl<$Res, AddCardState>;
  @useResult
  $Res call(
      {bool isLoading, AddCardModel data, Failure? error, bool isVerified});

  $AddCardModelCopyWith<$Res> get data;
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$AddCardStateCopyWithImpl<$Res, $Val extends AddCardState>
    implements $AddCardStateCopyWith<$Res> {
  _$AddCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = null,
    Object? error = freezed,
    Object? isVerified = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddCardModel,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddCardModelCopyWith<$Res> get data {
    return $AddCardModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddCardStateImplCopyWith<$Res>
    implements $AddCardStateCopyWith<$Res> {
  factory _$$AddCardStateImplCopyWith(
          _$AddCardStateImpl value, $Res Function(_$AddCardStateImpl) then) =
      __$$AddCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, AddCardModel data, Failure? error, bool isVerified});

  @override
  $AddCardModelCopyWith<$Res> get data;
  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$AddCardStateImplCopyWithImpl<$Res>
    extends _$AddCardStateCopyWithImpl<$Res, _$AddCardStateImpl>
    implements _$$AddCardStateImplCopyWith<$Res> {
  __$$AddCardStateImplCopyWithImpl(
      _$AddCardStateImpl _value, $Res Function(_$AddCardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = null,
    Object? error = freezed,
    Object? isVerified = null,
  }) {
    return _then(_$AddCardStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddCardModel,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddCardStateImpl implements _AddCardState {
  _$AddCardStateImpl(
      {required this.isLoading,
      required this.data,
      this.error,
      required this.isVerified});

  @override
  final bool isLoading;
  @override
  final AddCardModel data;
  @override
  final Failure? error;
  @override
  final bool isVerified;

  @override
  String toString() {
    return 'AddCardState(isLoading: $isLoading, data: $data, error: $error, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCardStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, data, error, isVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCardStateImplCopyWith<_$AddCardStateImpl> get copyWith =>
      __$$AddCardStateImplCopyWithImpl<_$AddCardStateImpl>(this, _$identity);
}

abstract class _AddCardState implements AddCardState {
  factory _AddCardState(
      {required final bool isLoading,
      required final AddCardModel data,
      final Failure? error,
      required final bool isVerified}) = _$AddCardStateImpl;

  @override
  bool get isLoading;
  @override
  AddCardModel get data;
  @override
  Failure? get error;
  @override
  bool get isVerified;
  @override
  @JsonKey(ignore: true)
  _$$AddCardStateImplCopyWith<_$AddCardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
