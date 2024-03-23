// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceDetails {
  String? get appVersion => throw _privateConstructorUsedError;
  String? get system => throw _privateConstructorUsedError;
  String? get systemVersion => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String? get deviceName => throw _privateConstructorUsedError;
  String? get systemName => throw _privateConstructorUsedError;
  int? get buildNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceDetailsCopyWith<DeviceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDetailsCopyWith<$Res> {
  factory $DeviceDetailsCopyWith(
          DeviceDetails value, $Res Function(DeviceDetails) then) =
      _$DeviceDetailsCopyWithImpl<$Res, DeviceDetails>;
  @useResult
  $Res call(
      {String? appVersion,
      String? system,
      String? systemVersion,
      String? deviceId,
      String? deviceName,
      String? systemName,
      int? buildNumber});
}

/// @nodoc
class _$DeviceDetailsCopyWithImpl<$Res, $Val extends DeviceDetails>
    implements $DeviceDetailsCopyWith<$Res> {
  _$DeviceDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = freezed,
    Object? system = freezed,
    Object? systemVersion = freezed,
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? systemName = freezed,
    Object? buildNumber = freezed,
  }) {
    return _then(_value.copyWith(
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String?,
      systemVersion: freezed == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      systemName: freezed == systemName
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildNumber: freezed == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceDetailsImplCopyWith<$Res>
    implements $DeviceDetailsCopyWith<$Res> {
  factory _$$DeviceDetailsImplCopyWith(
          _$DeviceDetailsImpl value, $Res Function(_$DeviceDetailsImpl) then) =
      __$$DeviceDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? appVersion,
      String? system,
      String? systemVersion,
      String? deviceId,
      String? deviceName,
      String? systemName,
      int? buildNumber});
}

/// @nodoc
class __$$DeviceDetailsImplCopyWithImpl<$Res>
    extends _$DeviceDetailsCopyWithImpl<$Res, _$DeviceDetailsImpl>
    implements _$$DeviceDetailsImplCopyWith<$Res> {
  __$$DeviceDetailsImplCopyWithImpl(
      _$DeviceDetailsImpl _value, $Res Function(_$DeviceDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = freezed,
    Object? system = freezed,
    Object? systemVersion = freezed,
    Object? deviceId = freezed,
    Object? deviceName = freezed,
    Object? systemName = freezed,
    Object? buildNumber = freezed,
  }) {
    return _then(_$DeviceDetailsImpl(
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String?,
      systemVersion: freezed == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      systemName: freezed == systemName
          ? _value.systemName
          : systemName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildNumber: freezed == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DeviceDetailsImpl extends _DeviceDetails {
  const _$DeviceDetailsImpl(
      {this.appVersion,
      this.system,
      this.systemVersion,
      this.deviceId,
      this.deviceName,
      this.systemName,
      this.buildNumber})
      : super._();

  @override
  final String? appVersion;
  @override
  final String? system;
  @override
  final String? systemVersion;
  @override
  final String? deviceId;
  @override
  final String? deviceName;
  @override
  final String? systemName;
  @override
  final int? buildNumber;

  @override
  String toString() {
    return 'DeviceDetails(appVersion: $appVersion, system: $system, systemVersion: $systemVersion, deviceId: $deviceId, deviceName: $deviceName, systemName: $systemName, buildNumber: $buildNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDetailsImpl &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.systemVersion, systemVersion) ||
                other.systemVersion == systemVersion) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.systemName, systemName) ||
                other.systemName == systemName) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appVersion, system,
      systemVersion, deviceId, deviceName, systemName, buildNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDetailsImplCopyWith<_$DeviceDetailsImpl> get copyWith =>
      __$$DeviceDetailsImplCopyWithImpl<_$DeviceDetailsImpl>(this, _$identity);
}

abstract class _DeviceDetails extends DeviceDetails {
  const factory _DeviceDetails(
      {final String? appVersion,
      final String? system,
      final String? systemVersion,
      final String? deviceId,
      final String? deviceName,
      final String? systemName,
      final int? buildNumber}) = _$DeviceDetailsImpl;
  const _DeviceDetails._() : super._();

  @override
  String? get appVersion;
  @override
  String? get system;
  @override
  String? get systemVersion;
  @override
  String? get deviceId;
  @override
  String? get deviceName;
  @override
  String? get systemName;
  @override
  int? get buildNumber;
  @override
  @JsonKey(ignore: true)
  _$$DeviceDetailsImplCopyWith<_$DeviceDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
