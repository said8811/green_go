// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransportModel _$TransportModelFromJson(Map<String, dynamic> json) {
  return _TransportModel.fromJson(json);
}

/// @nodoc
mixin _$TransportModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get number => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get qrCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportModelCopyWith<TransportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportModelCopyWith<$Res> {
  factory $TransportModelCopyWith(
          TransportModel value, $Res Function(TransportModel) then) =
      _$TransportModelCopyWithImpl<$Res, TransportModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
      double latitude,
      @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
      double longitude,
      @JsonKey(defaultValue: "") String name,
      @JsonKey(defaultValue: "") String number,
      @JsonKey(defaultValue: "") String qrCode});
}

/// @nodoc
class _$TransportModelCopyWithImpl<$Res, $Val extends TransportModel>
    implements $TransportModelCopyWith<$Res> {
  _$TransportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? name = null,
    Object? number = null,
    Object? qrCode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransportModelImplCopyWith<$Res>
    implements $TransportModelCopyWith<$Res> {
  factory _$$TransportModelImplCopyWith(_$TransportModelImpl value,
          $Res Function(_$TransportModelImpl) then) =
      __$$TransportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
      double latitude,
      @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
      double longitude,
      @JsonKey(defaultValue: "") String name,
      @JsonKey(defaultValue: "") String number,
      @JsonKey(defaultValue: "") String qrCode});
}

/// @nodoc
class __$$TransportModelImplCopyWithImpl<$Res>
    extends _$TransportModelCopyWithImpl<$Res, _$TransportModelImpl>
    implements _$$TransportModelImplCopyWith<$Res> {
  __$$TransportModelImplCopyWithImpl(
      _$TransportModelImpl _value, $Res Function(_$TransportModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? name = null,
    Object? number = null,
    Object? qrCode = null,
  }) {
    return _then(_$TransportModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransportModelImpl implements _TransportModel {
  _$TransportModelImpl(
      {required this.id,
      @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
      required this.latitude,
      @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
      required this.longitude,
      @JsonKey(defaultValue: "") required this.name,
      @JsonKey(defaultValue: "") required this.number,
      @JsonKey(defaultValue: "") required this.qrCode});

  factory _$TransportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransportModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
  final double latitude;
  @override
  @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
  final double longitude;
  @override
  @JsonKey(defaultValue: "")
  final String name;
  @override
  @JsonKey(defaultValue: "")
  final String number;
  @override
  @JsonKey(defaultValue: "")
  final String qrCode;

  @override
  String toString() {
    return 'TransportModel(id: $id, latitude: $latitude, longitude: $longitude, name: $name, number: $number, qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, latitude, longitude, name, number, qrCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportModelImplCopyWith<_$TransportModelImpl> get copyWith =>
      __$$TransportModelImplCopyWithImpl<_$TransportModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransportModelImplToJson(
      this,
    );
  }
}

abstract class _TransportModel implements TransportModel {
  factory _TransportModel(
          {required final int id,
          @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
          required final double latitude,
          @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
          required final double longitude,
          @JsonKey(defaultValue: "") required final String name,
          @JsonKey(defaultValue: "") required final String number,
          @JsonKey(defaultValue: "") required final String qrCode}) =
      _$TransportModelImpl;

  factory _TransportModel.fromJson(Map<String, dynamic> json) =
      _$TransportModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
  double get latitude;
  @override
  @JsonKey(defaultValue: 0.0, fromJson: JsonHelpers.intToDouble)
  double get longitude;
  @override
  @JsonKey(defaultValue: "")
  String get name;
  @override
  @JsonKey(defaultValue: "")
  String get number;
  @override
  @JsonKey(defaultValue: "")
  String get qrCode;
  @override
  @JsonKey(ignore: true)
  _$$TransportModelImplCopyWith<_$TransportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
