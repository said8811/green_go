// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Success {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? message) general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? message)? general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? message)? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Success value) $default, {
    required TResult Function(_General value) general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Success value)? $default, {
    TResult? Function(_General value)? general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Success value)? $default, {
    TResult Function(_General value)? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res, Success>;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res, $Val extends Success>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SuccessCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessImpl extends _Success {
  const _$SuccessImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? message) general,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? message)? general,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? message)? general,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Success value) $default, {
    required TResult Function(_General value) general,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Success value)? $default, {
    TResult? Function(_General value)? general,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Success value)? $default, {
    TResult Function(_General value)? general,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Success extends Success {
  const factory _Success() = _$SuccessImpl;
  const _Success._() : super._();
}

/// @nodoc
abstract class _$$GeneralImplCopyWith<$Res> {
  factory _$$GeneralImplCopyWith(
          _$GeneralImpl value, $Res Function(_$GeneralImpl) then) =
      __$$GeneralImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$GeneralImplCopyWithImpl<$Res>
    extends _$SuccessCopyWithImpl<$Res, _$GeneralImpl>
    implements _$$GeneralImplCopyWith<$Res> {
  __$$GeneralImplCopyWithImpl(
      _$GeneralImpl _value, $Res Function(_$GeneralImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$GeneralImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GeneralImpl extends _General {
  const _$GeneralImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralImplCopyWith<_$GeneralImpl> get copyWith =>
      __$$GeneralImplCopyWithImpl<_$GeneralImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? message) general,
  }) {
    return general(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? message)? general,
  }) {
    return general?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? message)? general,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Success value) $default, {
    required TResult Function(_General value) general,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Success value)? $default, {
    TResult? Function(_General value)? general,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Success value)? $default, {
    TResult Function(_General value)? general,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }
}

abstract class _General extends Success {
  const factory _General([final String? message]) = _$GeneralImpl;
  const _General._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$GeneralImplCopyWith<_$GeneralImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? message) server,
    required TResult Function() noConnection,
    required TResult Function(String? message) local,
    required TResult Function() fatalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? message)? server,
    TResult? Function()? noConnection,
    TResult? Function(String? message)? local,
    TResult? Function()? fatalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? message)? server,
    TResult Function()? noConnection,
    TResult Function(String? message)? local,
    TResult Function()? fatalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Local value) local,
    required TResult Function(_Fatal value) fatalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Local value)? local,
    TResult? Function(_Fatal value)? fatalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Local value)? local,
    TResult Function(_Fatal value)? fatalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailureImpl extends _Failure {
  const _$FailureImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? message) server,
    required TResult Function() noConnection,
    required TResult Function(String? message) local,
    required TResult Function() fatalError,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? message)? server,
    TResult? Function()? noConnection,
    TResult? Function(String? message)? local,
    TResult? Function()? fatalError,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? message)? server,
    TResult Function()? noConnection,
    TResult Function(String? message)? local,
    TResult Function()? fatalError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Local value) local,
    required TResult Function(_Fatal value) fatalError,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Local value)? local,
    TResult? Function(_Fatal value)? fatalError,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Local value)? local,
    TResult Function(_Fatal value)? fatalError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Failure extends Failure {
  const factory _Failure() = _$FailureImpl;
  const _Failure._() : super._();
}

/// @nodoc
abstract class _$$ServerImplCopyWith<$Res> {
  factory _$$ServerImplCopyWith(
          _$ServerImpl value, $Res Function(_$ServerImpl) then) =
      __$$ServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServerImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerImpl>
    implements _$$ServerImplCopyWith<$Res> {
  __$$ServerImplCopyWithImpl(
      _$ServerImpl _value, $Res Function(_$ServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerImpl extends _Server {
  const _$ServerImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      __$$ServerImplCopyWithImpl<_$ServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? message) server,
    required TResult Function() noConnection,
    required TResult Function(String? message) local,
    required TResult Function() fatalError,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? message)? server,
    TResult? Function()? noConnection,
    TResult? Function(String? message)? local,
    TResult? Function()? fatalError,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? message)? server,
    TResult Function()? noConnection,
    TResult Function(String? message)? local,
    TResult Function()? fatalError,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Local value) local,
    required TResult Function(_Fatal value) fatalError,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Local value)? local,
    TResult? Function(_Fatal value)? fatalError,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Local value)? local,
    TResult Function(_Fatal value)? fatalError,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server extends Failure {
  const factory _Server([final String? message]) = _$ServerImpl;
  const _Server._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionImplCopyWith<$Res> {
  factory _$$NoConnectionImplCopyWith(
          _$NoConnectionImpl value, $Res Function(_$NoConnectionImpl) then) =
      __$$NoConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoConnectionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NoConnectionImpl>
    implements _$$NoConnectionImplCopyWith<$Res> {
  __$$NoConnectionImplCopyWithImpl(
      _$NoConnectionImpl _value, $Res Function(_$NoConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoConnectionImpl extends _NoConnection {
  const _$NoConnectionImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? message) server,
    required TResult Function() noConnection,
    required TResult Function(String? message) local,
    required TResult Function() fatalError,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? message)? server,
    TResult? Function()? noConnection,
    TResult? Function(String? message)? local,
    TResult? Function()? fatalError,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? message)? server,
    TResult Function()? noConnection,
    TResult Function(String? message)? local,
    TResult Function()? fatalError,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Local value) local,
    required TResult Function(_Fatal value) fatalError,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Local value)? local,
    TResult? Function(_Fatal value)? fatalError,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Local value)? local,
    TResult Function(_Fatal value)? fatalError,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection extends Failure {
  const factory _NoConnection() = _$NoConnectionImpl;
  const _NoConnection._() : super._();
}

/// @nodoc
abstract class _$$LocalImplCopyWith<$Res> {
  factory _$$LocalImplCopyWith(
          _$LocalImpl value, $Res Function(_$LocalImpl) then) =
      __$$LocalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$LocalImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$LocalImpl>
    implements _$$LocalImplCopyWith<$Res> {
  __$$LocalImplCopyWithImpl(
      _$LocalImpl _value, $Res Function(_$LocalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LocalImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocalImpl extends _Local {
  const _$LocalImpl([this.message]) : super._();

  @override
  final String? message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalImplCopyWith<_$LocalImpl> get copyWith =>
      __$$LocalImplCopyWithImpl<_$LocalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? message) server,
    required TResult Function() noConnection,
    required TResult Function(String? message) local,
    required TResult Function() fatalError,
  }) {
    return local(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? message)? server,
    TResult? Function()? noConnection,
    TResult? Function(String? message)? local,
    TResult? Function()? fatalError,
  }) {
    return local?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? message)? server,
    TResult Function()? noConnection,
    TResult Function(String? message)? local,
    TResult Function()? fatalError,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Local value) local,
    required TResult Function(_Fatal value) fatalError,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Local value)? local,
    TResult? Function(_Fatal value)? fatalError,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Local value)? local,
    TResult Function(_Fatal value)? fatalError,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class _Local extends Failure {
  const factory _Local([final String? message]) = _$LocalImpl;
  const _Local._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$LocalImplCopyWith<_$LocalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FatalImplCopyWith<$Res> {
  factory _$$FatalImplCopyWith(
          _$FatalImpl value, $Res Function(_$FatalImpl) then) =
      __$$FatalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FatalImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FatalImpl>
    implements _$$FatalImplCopyWith<$Res> {
  __$$FatalImplCopyWithImpl(
      _$FatalImpl _value, $Res Function(_$FatalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FatalImpl extends _Fatal {
  const _$FatalImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FatalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? message) server,
    required TResult Function() noConnection,
    required TResult Function(String? message) local,
    required TResult Function() fatalError,
  }) {
    return fatalError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? message)? server,
    TResult? Function()? noConnection,
    TResult? Function(String? message)? local,
    TResult? Function()? fatalError,
  }) {
    return fatalError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? message)? server,
    TResult Function()? noConnection,
    TResult Function(String? message)? local,
    TResult Function()? fatalError,
    required TResult orElse(),
  }) {
    if (fatalError != null) {
      return fatalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Failure value) $default, {
    required TResult Function(_Server value) server,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Local value) local,
    required TResult Function(_Fatal value) fatalError,
  }) {
    return fatalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Failure value)? $default, {
    TResult? Function(_Server value)? server,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Local value)? local,
    TResult? Function(_Fatal value)? fatalError,
  }) {
    return fatalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Failure value)? $default, {
    TResult Function(_Server value)? server,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Local value)? local,
    TResult Function(_Fatal value)? fatalError,
    required TResult orElse(),
  }) {
    if (fatalError != null) {
      return fatalError(this);
    }
    return orElse();
  }
}

abstract class _Fatal extends Failure {
  const factory _Fatal() = _$FatalImpl;
  const _Fatal._() : super._();
}
