// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lat_long_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LatLongModel _$LatLongModelFromJson(Map<String, dynamic> json) {
  return _LatLongModel.fromJson(json);
}

/// @nodoc
mixin _$LatLongModel {
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLongModelCopyWith<LatLongModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLongModelCopyWith<$Res> {
  factory $LatLongModelCopyWith(
          LatLongModel value, $Res Function(LatLongModel) then) =
      _$LatLongModelCopyWithImpl<$Res, LatLongModel>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: JsonHelpers.intToDouble) double latitude,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double longitude});
}

/// @nodoc
class _$LatLongModelCopyWithImpl<$Res, $Val extends LatLongModel>
    implements $LatLongModelCopyWith<$Res> {
  _$LatLongModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LatLongModelImplCopyWith<$Res>
    implements $LatLongModelCopyWith<$Res> {
  factory _$$LatLongModelImplCopyWith(
          _$LatLongModelImpl value, $Res Function(_$LatLongModelImpl) then) =
      __$$LatLongModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: JsonHelpers.intToDouble) double latitude,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double longitude});
}

/// @nodoc
class __$$LatLongModelImplCopyWithImpl<$Res>
    extends _$LatLongModelCopyWithImpl<$Res, _$LatLongModelImpl>
    implements _$$LatLongModelImplCopyWith<$Res> {
  __$$LatLongModelImplCopyWithImpl(
      _$LatLongModelImpl _value, $Res Function(_$LatLongModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$LatLongModelImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LatLongModelImpl implements _LatLongModel {
  _$LatLongModelImpl(
      {@JsonKey(fromJson: JsonHelpers.intToDouble) required this.latitude,
      @JsonKey(fromJson: JsonHelpers.intToDouble) required this.longitude});

  factory _$LatLongModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatLongModelImplFromJson(json);

  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  final double latitude;
  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  final double longitude;

  @override
  String toString() {
    return 'LatLongModel(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatLongModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LatLongModelImplCopyWith<_$LatLongModelImpl> get copyWith =>
      __$$LatLongModelImplCopyWithImpl<_$LatLongModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatLongModelImplToJson(
      this,
    );
  }
}

abstract class _LatLongModel implements LatLongModel {
  factory _LatLongModel(
      {@JsonKey(fromJson: JsonHelpers.intToDouble)
      required final double latitude,
      @JsonKey(fromJson: JsonHelpers.intToDouble)
      required final double longitude}) = _$LatLongModelImpl;

  factory _LatLongModel.fromJson(Map<String, dynamic> json) =
      _$LatLongModelImpl.fromJson;

  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get latitude;
  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$LatLongModelImplCopyWith<_$LatLongModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
