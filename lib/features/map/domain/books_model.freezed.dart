// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookModel _$BookModelFromJson(Map<String, dynamic> json) {
  return _BookModel.fromJson(json);
}

/// @nodoc
mixin _$BookModel {
  int get bicycleId => throw _privateConstructorUsedError;
  String get finishAt => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  LatLongModel? get coordinate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookModelCopyWith<BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookModelCopyWith<$Res> {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) =
      _$BookModelCopyWithImpl<$Res, BookModel>;
  @useResult
  $Res call(
      {int bicycleId,
      String finishAt,
      String qrCode,
      LatLongModel? coordinate});

  $LatLongModelCopyWith<$Res>? get coordinate;
}

/// @nodoc
class _$BookModelCopyWithImpl<$Res, $Val extends BookModel>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bicycleId = null,
    Object? finishAt = null,
    Object? qrCode = null,
    Object? coordinate = freezed,
  }) {
    return _then(_value.copyWith(
      bicycleId: null == bicycleId
          ? _value.bicycleId
          : bicycleId // ignore: cast_nullable_to_non_nullable
              as int,
      finishAt: null == finishAt
          ? _value.finishAt
          : finishAt // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: freezed == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as LatLongModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LatLongModelCopyWith<$Res>? get coordinate {
    if (_value.coordinate == null) {
      return null;
    }

    return $LatLongModelCopyWith<$Res>(_value.coordinate!, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookModelImplCopyWith<$Res>
    implements $BookModelCopyWith<$Res> {
  factory _$$BookModelImplCopyWith(
          _$BookModelImpl value, $Res Function(_$BookModelImpl) then) =
      __$$BookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int bicycleId,
      String finishAt,
      String qrCode,
      LatLongModel? coordinate});

  @override
  $LatLongModelCopyWith<$Res>? get coordinate;
}

/// @nodoc
class __$$BookModelImplCopyWithImpl<$Res>
    extends _$BookModelCopyWithImpl<$Res, _$BookModelImpl>
    implements _$$BookModelImplCopyWith<$Res> {
  __$$BookModelImplCopyWithImpl(
      _$BookModelImpl _value, $Res Function(_$BookModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bicycleId = null,
    Object? finishAt = null,
    Object? qrCode = null,
    Object? coordinate = freezed,
  }) {
    return _then(_$BookModelImpl(
      bicycleId: null == bicycleId
          ? _value.bicycleId
          : bicycleId // ignore: cast_nullable_to_non_nullable
              as int,
      finishAt: null == finishAt
          ? _value.finishAt
          : finishAt // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: freezed == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as LatLongModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookModelImpl implements _BookModel {
  _$BookModelImpl(
      {required this.bicycleId,
      required this.finishAt,
      required this.qrCode,
      required this.coordinate});

  factory _$BookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookModelImplFromJson(json);

  @override
  final int bicycleId;
  @override
  final String finishAt;
  @override
  final String qrCode;
  @override
  final LatLongModel? coordinate;

  @override
  String toString() {
    return 'BookModel(bicycleId: $bicycleId, finishAt: $finishAt, qrCode: $qrCode, coordinate: $coordinate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookModelImpl &&
            (identical(other.bicycleId, bicycleId) ||
                other.bicycleId == bicycleId) &&
            (identical(other.finishAt, finishAt) ||
                other.finishAt == finishAt) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bicycleId, finishAt, qrCode, coordinate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookModelImplCopyWith<_$BookModelImpl> get copyWith =>
      __$$BookModelImplCopyWithImpl<_$BookModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookModelImplToJson(
      this,
    );
  }
}

abstract class _BookModel implements BookModel {
  factory _BookModel(
      {required final int bicycleId,
      required final String finishAt,
      required final String qrCode,
      required final LatLongModel? coordinate}) = _$BookModelImpl;

  factory _BookModel.fromJson(Map<String, dynamic> json) =
      _$BookModelImpl.fromJson;

  @override
  int get bicycleId;
  @override
  String get finishAt;
  @override
  String get qrCode;
  @override
  LatLongModel? get coordinate;
  @override
  @JsonKey(ignore: true)
  _$$BookModelImplCopyWith<_$BookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
