// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reference_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReferenceState {
  bool get isLoading => throw _privateConstructorUsedError;
  ReferenceModel? get data => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReferenceStateCopyWith<ReferenceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferenceStateCopyWith<$Res> {
  factory $ReferenceStateCopyWith(
          ReferenceState value, $Res Function(ReferenceState) then) =
      _$ReferenceStateCopyWithImpl<$Res, ReferenceState>;
  @useResult
  $Res call({bool isLoading, ReferenceModel? data, Failure? error});

  $ReferenceModelCopyWith<$Res>? get data;
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$ReferenceStateCopyWithImpl<$Res, $Val extends ReferenceState>
    implements $ReferenceStateCopyWith<$Res> {
  _$ReferenceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ReferenceModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ReferenceModelCopyWith<$Res>(_value.data!, (value) {
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
abstract class _$$ReferenceStateImplCopyWith<$Res>
    implements $ReferenceStateCopyWith<$Res> {
  factory _$$ReferenceStateImplCopyWith(_$ReferenceStateImpl value,
          $Res Function(_$ReferenceStateImpl) then) =
      __$$ReferenceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, ReferenceModel? data, Failure? error});

  @override
  $ReferenceModelCopyWith<$Res>? get data;
  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ReferenceStateImplCopyWithImpl<$Res>
    extends _$ReferenceStateCopyWithImpl<$Res, _$ReferenceStateImpl>
    implements _$$ReferenceStateImplCopyWith<$Res> {
  __$$ReferenceStateImplCopyWithImpl(
      _$ReferenceStateImpl _value, $Res Function(_$ReferenceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ReferenceStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ReferenceModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ReferenceStateImpl implements _ReferenceState {
  _$ReferenceStateImpl({required this.isLoading, this.data, this.error});

  @override
  final bool isLoading;
  @override
  final ReferenceModel? data;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'ReferenceState(isLoading: $isLoading, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferenceStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferenceStateImplCopyWith<_$ReferenceStateImpl> get copyWith =>
      __$$ReferenceStateImplCopyWithImpl<_$ReferenceStateImpl>(
          this, _$identity);
}

abstract class _ReferenceState implements ReferenceState {
  factory _ReferenceState(
      {required final bool isLoading,
      final ReferenceModel? data,
      final Failure? error}) = _$ReferenceStateImpl;

  @override
  bool get isLoading;
  @override
  ReferenceModel? get data;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$ReferenceStateImplCopyWith<_$ReferenceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
