// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CordinateModel _$CordinateModelFromJson(Map<String, dynamic> json) {
  return _CordinateModel.fromJson(json);
}

/// @nodoc
mixin _$CordinateModel {
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CordinateModelCopyWith<CordinateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CordinateModelCopyWith<$Res> {
  factory $CordinateModelCopyWith(
          CordinateModel value, $Res Function(CordinateModel) then) =
      _$CordinateModelCopyWithImpl<$Res, CordinateModel>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: JsonHelpers.intToDouble) double latitude,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double longitude});
}

/// @nodoc
class _$CordinateModelCopyWithImpl<$Res, $Val extends CordinateModel>
    implements $CordinateModelCopyWith<$Res> {
  _$CordinateModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CordinateModelImplCopyWith<$Res>
    implements $CordinateModelCopyWith<$Res> {
  factory _$$CordinateModelImplCopyWith(_$CordinateModelImpl value,
          $Res Function(_$CordinateModelImpl) then) =
      __$$CordinateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: JsonHelpers.intToDouble) double latitude,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double longitude});
}

/// @nodoc
class __$$CordinateModelImplCopyWithImpl<$Res>
    extends _$CordinateModelCopyWithImpl<$Res, _$CordinateModelImpl>
    implements _$$CordinateModelImplCopyWith<$Res> {
  __$$CordinateModelImplCopyWithImpl(
      _$CordinateModelImpl _value, $Res Function(_$CordinateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$CordinateModelImpl(
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
class _$CordinateModelImpl implements _CordinateModel {
  _$CordinateModelImpl(
      {@JsonKey(fromJson: JsonHelpers.intToDouble) required this.latitude,
      @JsonKey(fromJson: JsonHelpers.intToDouble) required this.longitude});

  factory _$CordinateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CordinateModelImplFromJson(json);

  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  final double latitude;
  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  final double longitude;

  @override
  String toString() {
    return 'CordinateModel(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CordinateModelImpl &&
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
  _$$CordinateModelImplCopyWith<_$CordinateModelImpl> get copyWith =>
      __$$CordinateModelImplCopyWithImpl<_$CordinateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CordinateModelImplToJson(
      this,
    );
  }
}

abstract class _CordinateModel implements CordinateModel {
  factory _CordinateModel(
      {@JsonKey(fromJson: JsonHelpers.intToDouble)
      required final double latitude,
      @JsonKey(fromJson: JsonHelpers.intToDouble)
      required final double longitude}) = _$CordinateModelImpl;

  factory _CordinateModel.fromJson(Map<String, dynamic> json) =
      _$CordinateModelImpl.fromJson;

  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get latitude;
  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$CordinateModelImplCopyWith<_$CordinateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
