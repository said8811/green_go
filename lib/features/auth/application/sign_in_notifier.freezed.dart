// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInFormState {
  bool get isRegistered => throw _privateConstructorUsedError;
  bool get hasCodeSent => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  bool get sentCodeIsTrue => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  DateTime? get codeSentTime => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  bool get requestForUpdatePass => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call(
      {bool isRegistered,
      bool hasCodeSent,
      bool isLoading,
      String phone,
      String code,
      bool sentCodeIsTrue,
      Failure? error,
      DateTime? codeSentTime,
      UserModel? user,
      bool requestForUpdatePass});

  $FailureCopyWith<$Res>? get error;
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRegistered = null,
    Object? hasCodeSent = null,
    Object? isLoading = null,
    Object? phone = null,
    Object? code = null,
    Object? sentCodeIsTrue = null,
    Object? error = freezed,
    Object? codeSentTime = freezed,
    Object? user = freezed,
    Object? requestForUpdatePass = null,
  }) {
    return _then(_value.copyWith(
      isRegistered: null == isRegistered
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCodeSent: null == hasCodeSent
          ? _value.hasCodeSent
          : hasCodeSent // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sentCodeIsTrue: null == sentCodeIsTrue
          ? _value.sentCodeIsTrue
          : sentCodeIsTrue // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      codeSentTime: freezed == codeSentTime
          ? _value.codeSentTime
          : codeSentTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      requestForUpdatePass: null == requestForUpdatePass
          ? _value.requestForUpdatePass
          : requestForUpdatePass // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInFormStateImplCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$SignInFormStateImplCopyWith(_$SignInFormStateImpl value,
          $Res Function(_$SignInFormStateImpl) then) =
      __$$SignInFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isRegistered,
      bool hasCodeSent,
      bool isLoading,
      String phone,
      String code,
      bool sentCodeIsTrue,
      Failure? error,
      DateTime? codeSentTime,
      UserModel? user,
      bool requestForUpdatePass});

  @override
  $FailureCopyWith<$Res>? get error;
  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SignInFormStateImplCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$SignInFormStateImpl>
    implements _$$SignInFormStateImplCopyWith<$Res> {
  __$$SignInFormStateImplCopyWithImpl(
      _$SignInFormStateImpl _value, $Res Function(_$SignInFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRegistered = null,
    Object? hasCodeSent = null,
    Object? isLoading = null,
    Object? phone = null,
    Object? code = null,
    Object? sentCodeIsTrue = null,
    Object? error = freezed,
    Object? codeSentTime = freezed,
    Object? user = freezed,
    Object? requestForUpdatePass = null,
  }) {
    return _then(_$SignInFormStateImpl(
      isRegistered: null == isRegistered
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCodeSent: null == hasCodeSent
          ? _value.hasCodeSent
          : hasCodeSent // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sentCodeIsTrue: null == sentCodeIsTrue
          ? _value.sentCodeIsTrue
          : sentCodeIsTrue // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      codeSentTime: freezed == codeSentTime
          ? _value.codeSentTime
          : codeSentTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      requestForUpdatePass: null == requestForUpdatePass
          ? _value.requestForUpdatePass
          : requestForUpdatePass // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignInFormStateImpl extends _SignInFormState {
  const _$SignInFormStateImpl(
      {required this.isRegistered,
      required this.hasCodeSent,
      required this.isLoading,
      required this.phone,
      required this.code,
      required this.sentCodeIsTrue,
      this.error,
      this.codeSentTime,
      this.user,
      required this.requestForUpdatePass})
      : super._();

  @override
  final bool isRegistered;
  @override
  final bool hasCodeSent;
  @override
  final bool isLoading;
  @override
  final String phone;
  @override
  final String code;
  @override
  final bool sentCodeIsTrue;
  @override
  final Failure? error;
  @override
  final DateTime? codeSentTime;
  @override
  final UserModel? user;
  @override
  final bool requestForUpdatePass;

  @override
  String toString() {
    return 'SignInFormState(isRegistered: $isRegistered, hasCodeSent: $hasCodeSent, isLoading: $isLoading, phone: $phone, code: $code, sentCodeIsTrue: $sentCodeIsTrue, error: $error, codeSentTime: $codeSentTime, user: $user, requestForUpdatePass: $requestForUpdatePass)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFormStateImpl &&
            (identical(other.isRegistered, isRegistered) ||
                other.isRegistered == isRegistered) &&
            (identical(other.hasCodeSent, hasCodeSent) ||
                other.hasCodeSent == hasCodeSent) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.sentCodeIsTrue, sentCodeIsTrue) ||
                other.sentCodeIsTrue == sentCodeIsTrue) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.codeSentTime, codeSentTime) ||
                other.codeSentTime == codeSentTime) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.requestForUpdatePass, requestForUpdatePass) ||
                other.requestForUpdatePass == requestForUpdatePass));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isRegistered,
      hasCodeSent,
      isLoading,
      phone,
      code,
      sentCodeIsTrue,
      error,
      codeSentTime,
      user,
      requestForUpdatePass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFormStateImplCopyWith<_$SignInFormStateImpl> get copyWith =>
      __$$SignInFormStateImplCopyWithImpl<_$SignInFormStateImpl>(
          this, _$identity);
}

abstract class _SignInFormState extends SignInFormState {
  const factory _SignInFormState(
      {required final bool isRegistered,
      required final bool hasCodeSent,
      required final bool isLoading,
      required final String phone,
      required final String code,
      required final bool sentCodeIsTrue,
      final Failure? error,
      final DateTime? codeSentTime,
      final UserModel? user,
      required final bool requestForUpdatePass}) = _$SignInFormStateImpl;
  const _SignInFormState._() : super._();

  @override
  bool get isRegistered;
  @override
  bool get hasCodeSent;
  @override
  bool get isLoading;
  @override
  String get phone;
  @override
  String get code;
  @override
  bool get sentCodeIsTrue;
  @override
  Failure? get error;
  @override
  DateTime? get codeSentTime;
  @override
  UserModel? get user;
  @override
  bool get requestForUpdatePass;
  @override
  @JsonKey(ignore: true)
  _$$SignInFormStateImplCopyWith<_$SignInFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
