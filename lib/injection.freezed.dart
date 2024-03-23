// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'injection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppInjections {
  AppConfig get appConfig => throw _privateConstructorUsedError;
  HiveDataStore get dataStore => throw _privateConstructorUsedError;
  DeviceDetails? get details => throw _privateConstructorUsedError;
  SharedPreferences get sharedPrefs => throw _privateConstructorUsedError;
  FlutterSecureStorage get secureStorage => throw _privateConstructorUsedError;
  Dio get dio => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppInjectionsCopyWith<AppInjections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInjectionsCopyWith<$Res> {
  factory $AppInjectionsCopyWith(
          AppInjections value, $Res Function(AppInjections) then) =
      _$AppInjectionsCopyWithImpl<$Res, AppInjections>;
  @useResult
  $Res call(
      {AppConfig appConfig,
      HiveDataStore dataStore,
      DeviceDetails? details,
      SharedPreferences sharedPrefs,
      FlutterSecureStorage secureStorage,
      Dio dio});

  $AppConfigCopyWith<$Res> get appConfig;
  $DeviceDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$AppInjectionsCopyWithImpl<$Res, $Val extends AppInjections>
    implements $AppInjectionsCopyWith<$Res> {
  _$AppInjectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appConfig = null,
    Object? dataStore = null,
    Object? details = freezed,
    Object? sharedPrefs = null,
    Object? secureStorage = null,
    Object? dio = null,
  }) {
    return _then(_value.copyWith(
      appConfig: null == appConfig
          ? _value.appConfig
          : appConfig // ignore: cast_nullable_to_non_nullable
              as AppConfig,
      dataStore: null == dataStore
          ? _value.dataStore
          : dataStore // ignore: cast_nullable_to_non_nullable
              as HiveDataStore,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as DeviceDetails?,
      sharedPrefs: null == sharedPrefs
          ? _value.sharedPrefs
          : sharedPrefs // ignore: cast_nullable_to_non_nullable
              as SharedPreferences,
      secureStorage: null == secureStorage
          ? _value.secureStorage
          : secureStorage // ignore: cast_nullable_to_non_nullable
              as FlutterSecureStorage,
      dio: null == dio
          ? _value.dio
          : dio // ignore: cast_nullable_to_non_nullable
              as Dio,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppConfigCopyWith<$Res> get appConfig {
    return $AppConfigCopyWith<$Res>(_value.appConfig, (value) {
      return _then(_value.copyWith(appConfig: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceDetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $DeviceDetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppInjectionsImplCopyWith<$Res>
    implements $AppInjectionsCopyWith<$Res> {
  factory _$$AppInjectionsImplCopyWith(
          _$AppInjectionsImpl value, $Res Function(_$AppInjectionsImpl) then) =
      __$$AppInjectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppConfig appConfig,
      HiveDataStore dataStore,
      DeviceDetails? details,
      SharedPreferences sharedPrefs,
      FlutterSecureStorage secureStorage,
      Dio dio});

  @override
  $AppConfigCopyWith<$Res> get appConfig;
  @override
  $DeviceDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$$AppInjectionsImplCopyWithImpl<$Res>
    extends _$AppInjectionsCopyWithImpl<$Res, _$AppInjectionsImpl>
    implements _$$AppInjectionsImplCopyWith<$Res> {
  __$$AppInjectionsImplCopyWithImpl(
      _$AppInjectionsImpl _value, $Res Function(_$AppInjectionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appConfig = null,
    Object? dataStore = null,
    Object? details = freezed,
    Object? sharedPrefs = null,
    Object? secureStorage = null,
    Object? dio = null,
  }) {
    return _then(_$AppInjectionsImpl(
      appConfig: null == appConfig
          ? _value.appConfig
          : appConfig // ignore: cast_nullable_to_non_nullable
              as AppConfig,
      dataStore: null == dataStore
          ? _value.dataStore
          : dataStore // ignore: cast_nullable_to_non_nullable
              as HiveDataStore,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as DeviceDetails?,
      sharedPrefs: null == sharedPrefs
          ? _value.sharedPrefs
          : sharedPrefs // ignore: cast_nullable_to_non_nullable
              as SharedPreferences,
      secureStorage: null == secureStorage
          ? _value.secureStorage
          : secureStorage // ignore: cast_nullable_to_non_nullable
              as FlutterSecureStorage,
      dio: null == dio
          ? _value.dio
          : dio // ignore: cast_nullable_to_non_nullable
              as Dio,
    ));
  }
}

/// @nodoc

class _$AppInjectionsImpl extends _AppInjections {
  const _$AppInjectionsImpl(
      {required this.appConfig,
      required this.dataStore,
      required this.details,
      required this.sharedPrefs,
      required this.secureStorage,
      required this.dio})
      : super._();

  @override
  final AppConfig appConfig;
  @override
  final HiveDataStore dataStore;
  @override
  final DeviceDetails? details;
  @override
  final SharedPreferences sharedPrefs;
  @override
  final FlutterSecureStorage secureStorage;
  @override
  final Dio dio;

  @override
  String toString() {
    return 'AppInjections(appConfig: $appConfig, dataStore: $dataStore, details: $details, sharedPrefs: $sharedPrefs, secureStorage: $secureStorage, dio: $dio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInjectionsImpl &&
            (identical(other.appConfig, appConfig) ||
                other.appConfig == appConfig) &&
            (identical(other.dataStore, dataStore) ||
                other.dataStore == dataStore) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.sharedPrefs, sharedPrefs) ||
                other.sharedPrefs == sharedPrefs) &&
            (identical(other.secureStorage, secureStorage) ||
                other.secureStorage == secureStorage) &&
            (identical(other.dio, dio) || other.dio == dio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appConfig, dataStore, details,
      sharedPrefs, secureStorage, dio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInjectionsImplCopyWith<_$AppInjectionsImpl> get copyWith =>
      __$$AppInjectionsImplCopyWithImpl<_$AppInjectionsImpl>(this, _$identity);
}

abstract class _AppInjections extends AppInjections {
  const factory _AppInjections(
      {required final AppConfig appConfig,
      required final HiveDataStore dataStore,
      required final DeviceDetails? details,
      required final SharedPreferences sharedPrefs,
      required final FlutterSecureStorage secureStorage,
      required final Dio dio}) = _$AppInjectionsImpl;
  const _AppInjections._() : super._();

  @override
  AppConfig get appConfig;
  @override
  HiveDataStore get dataStore;
  @override
  DeviceDetails? get details;
  @override
  SharedPreferences get sharedPrefs;
  @override
  FlutterSecureStorage get secureStorage;
  @override
  Dio get dio;
  @override
  @JsonKey(ignore: true)
  _$$AppInjectionsImplCopyWith<_$AppInjectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
