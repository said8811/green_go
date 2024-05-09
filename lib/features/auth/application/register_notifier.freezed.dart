// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterState {
  _PersonalDetails? get personalDetails => throw _privateConstructorUsedError;
  bool get agreeToTerms => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {_PersonalDetails? personalDetails,
      bool agreeToTerms,
      bool isLoading,
      UserModel? user,
      Failure? failure});

  _$PersonalDetailsCopyWith<$Res>? get personalDetails;
  $UserModelCopyWith<$Res>? get user;
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personalDetails = freezed,
    Object? agreeToTerms = null,
    Object? isLoading = null,
    Object? user = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      personalDetails: freezed == personalDetails
          ? _value.personalDetails
          : personalDetails // ignore: cast_nullable_to_non_nullable
              as _PersonalDetails?,
      agreeToTerms: null == agreeToTerms
          ? _value.agreeToTerms
          : agreeToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  _$PersonalDetailsCopyWith<$Res>? get personalDetails {
    if (_value.personalDetails == null) {
      return null;
    }

    return _$PersonalDetailsCopyWith<$Res>(_value.personalDetails!, (value) {
      return _then(_value.copyWith(personalDetails: value) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {_PersonalDetails? personalDetails,
      bool agreeToTerms,
      bool isLoading,
      UserModel? user,
      Failure? failure});

  @override
  _$PersonalDetailsCopyWith<$Res>? get personalDetails;
  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personalDetails = freezed,
    Object? agreeToTerms = null,
    Object? isLoading = null,
    Object? user = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$RegisterStateImpl(
      personalDetails: freezed == personalDetails
          ? _value.personalDetails
          : personalDetails // ignore: cast_nullable_to_non_nullable
              as _PersonalDetails?,
      agreeToTerms: null == agreeToTerms
          ? _value.agreeToTerms
          : agreeToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$RegisterStateImpl extends _RegisterState {
  const _$RegisterStateImpl(
      {required this.personalDetails,
      required this.agreeToTerms,
      required this.isLoading,
      this.user,
      this.failure})
      : super._();

  @override
  final _PersonalDetails? personalDetails;
  @override
  final bool agreeToTerms;
  @override
  final bool isLoading;
  @override
  final UserModel? user;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'RegisterState(personalDetails: $personalDetails, agreeToTerms: $agreeToTerms, isLoading: $isLoading, user: $user, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.personalDetails, personalDetails) ||
                other.personalDetails == personalDetails) &&
            (identical(other.agreeToTerms, agreeToTerms) ||
                other.agreeToTerms == agreeToTerms) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, personalDetails, agreeToTerms, isLoading, user, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState extends RegisterState {
  const factory _RegisterState(
      {required final _PersonalDetails? personalDetails,
      required final bool agreeToTerms,
      required final bool isLoading,
      final UserModel? user,
      final Failure? failure}) = _$RegisterStateImpl;
  const _RegisterState._() : super._();

  @override
  _PersonalDetails? get personalDetails;
  @override
  bool get agreeToTerms;
  @override
  bool get isLoading;
  @override
  UserModel? get user;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonalDetails {
  String get firstName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$PersonalDetailsCopyWith<_PersonalDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PersonalDetailsCopyWith<$Res> {
  factory _$PersonalDetailsCopyWith(
          _PersonalDetails value, $Res Function(_PersonalDetails) then) =
      __$PersonalDetailsCopyWithImpl<$Res, _PersonalDetails>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$PersonalDetailsCopyWithImpl<$Res, $Val extends _PersonalDetails>
    implements _$PersonalDetailsCopyWith<$Res> {
  __$PersonalDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonalDetailsImplCopyWith<$Res>
    implements _$PersonalDetailsCopyWith<$Res> {
  factory _$$_PersonalDetailsImplCopyWith(_$_PersonalDetailsImpl value,
          $Res Function(_$_PersonalDetailsImpl) then) =
      __$$_PersonalDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$_PersonalDetailsImplCopyWithImpl<$Res>
    extends __$PersonalDetailsCopyWithImpl<$Res, _$_PersonalDetailsImpl>
    implements _$$_PersonalDetailsImplCopyWith<$Res> {
  __$$_PersonalDetailsImplCopyWithImpl(_$_PersonalDetailsImpl _value,
      $Res Function(_$_PersonalDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$_PersonalDetailsImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PersonalDetailsImpl extends __PersonalDetails {
  const _$_PersonalDetailsImpl({required this.firstName}) : super._();

  @override
  final String firstName;

  @override
  String toString() {
    return '_PersonalDetails(firstName: $firstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalDetailsImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalDetailsImplCopyWith<_$_PersonalDetailsImpl> get copyWith =>
      __$$_PersonalDetailsImplCopyWithImpl<_$_PersonalDetailsImpl>(
          this, _$identity);
}

abstract class __PersonalDetails extends _PersonalDetails {
  const factory __PersonalDetails({required final String firstName}) =
      _$_PersonalDetailsImpl;
  const __PersonalDetails._() : super._();

  @override
  String get firstName;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalDetailsImplCopyWith<_$_PersonalDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
