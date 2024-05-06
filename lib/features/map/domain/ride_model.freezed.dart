// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RideModel _$RideModelFromJson(Map<String, dynamic> json) {
  return _RideModel.fromJson(json);
}

/// @nodoc
mixin _$RideModel {
  int get id => throw _privateConstructorUsedError;
  int get bicycleId => throw _privateConstructorUsedError;
  int get lockerId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get qrCode => throw _privateConstructorUsedError;
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get pricePerMinute => throw _privateConstructorUsedError;
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get pausePricePerMinute => throw _privateConstructorUsedError;
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get startPrice => throw _privateConstructorUsedError;
  LatLongModel get startPoint => throw _privateConstructorUsedError;
  LatLongModel get endPoint => throw _privateConstructorUsedError;
  TarifModel? get tariff => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get startAt => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get finishedAt => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get pouseTime => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get ridingTime => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, fromJson: JsonHelpers.intToDouble)
  double get total => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [], fromJson: JsonHelpers.queueToString)
  List<String> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideModelCopyWith<RideModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideModelCopyWith<$Res> {
  factory $RideModelCopyWith(RideModel value, $Res Function(RideModel) then) =
      _$RideModelCopyWithImpl<$Res, RideModel>;
  @useResult
  $Res call(
      {int id,
      int bicycleId,
      int lockerId,
      int userId,
      @JsonKey(defaultValue: "") String qrCode,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double pricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double pausePricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double startPrice,
      LatLongModel startPoint,
      LatLongModel endPoint,
      TarifModel? tariff,
      @JsonKey(defaultValue: "") String startAt,
      @JsonKey(defaultValue: "") String finishedAt,
      @JsonKey(defaultValue: "") String image,
      @JsonKey(defaultValue: 0) int pouseTime,
      @JsonKey(defaultValue: 0) int ridingTime,
      @JsonKey(defaultValue: 0, fromJson: JsonHelpers.intToDouble) double total,
      @JsonKey(defaultValue: [], fromJson: JsonHelpers.queueToString)
      List<String> coordinates});

  $LatLongModelCopyWith<$Res> get startPoint;
  $LatLongModelCopyWith<$Res> get endPoint;
  $TarifModelCopyWith<$Res>? get tariff;
}

/// @nodoc
class _$RideModelCopyWithImpl<$Res, $Val extends RideModel>
    implements $RideModelCopyWith<$Res> {
  _$RideModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bicycleId = null,
    Object? lockerId = null,
    Object? userId = null,
    Object? qrCode = null,
    Object? pricePerMinute = null,
    Object? pausePricePerMinute = null,
    Object? startPrice = null,
    Object? startPoint = null,
    Object? endPoint = null,
    Object? tariff = freezed,
    Object? startAt = null,
    Object? finishedAt = null,
    Object? image = null,
    Object? pouseTime = null,
    Object? ridingTime = null,
    Object? total = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bicycleId: null == bicycleId
          ? _value.bicycleId
          : bicycleId // ignore: cast_nullable_to_non_nullable
              as int,
      lockerId: null == lockerId
          ? _value.lockerId
          : lockerId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerMinute: null == pricePerMinute
          ? _value.pricePerMinute
          : pricePerMinute // ignore: cast_nullable_to_non_nullable
              as double,
      pausePricePerMinute: null == pausePricePerMinute
          ? _value.pausePricePerMinute
          : pausePricePerMinute // ignore: cast_nullable_to_non_nullable
              as double,
      startPrice: null == startPrice
          ? _value.startPrice
          : startPrice // ignore: cast_nullable_to_non_nullable
              as double,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as LatLongModel,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as LatLongModel,
      tariff: freezed == tariff
          ? _value.tariff
          : tariff // ignore: cast_nullable_to_non_nullable
              as TarifModel?,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      finishedAt: null == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      pouseTime: null == pouseTime
          ? _value.pouseTime
          : pouseTime // ignore: cast_nullable_to_non_nullable
              as int,
      ridingTime: null == ridingTime
          ? _value.ridingTime
          : ridingTime // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LatLongModelCopyWith<$Res> get startPoint {
    return $LatLongModelCopyWith<$Res>(_value.startPoint, (value) {
      return _then(_value.copyWith(startPoint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LatLongModelCopyWith<$Res> get endPoint {
    return $LatLongModelCopyWith<$Res>(_value.endPoint, (value) {
      return _then(_value.copyWith(endPoint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TarifModelCopyWith<$Res>? get tariff {
    if (_value.tariff == null) {
      return null;
    }

    return $TarifModelCopyWith<$Res>(_value.tariff!, (value) {
      return _then(_value.copyWith(tariff: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RideModelImplCopyWith<$Res>
    implements $RideModelCopyWith<$Res> {
  factory _$$RideModelImplCopyWith(
          _$RideModelImpl value, $Res Function(_$RideModelImpl) then) =
      __$$RideModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int bicycleId,
      int lockerId,
      int userId,
      @JsonKey(defaultValue: "") String qrCode,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double pricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double pausePricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double startPrice,
      LatLongModel startPoint,
      LatLongModel endPoint,
      TarifModel? tariff,
      @JsonKey(defaultValue: "") String startAt,
      @JsonKey(defaultValue: "") String finishedAt,
      @JsonKey(defaultValue: "") String image,
      @JsonKey(defaultValue: 0) int pouseTime,
      @JsonKey(defaultValue: 0) int ridingTime,
      @JsonKey(defaultValue: 0, fromJson: JsonHelpers.intToDouble) double total,
      @JsonKey(defaultValue: [], fromJson: JsonHelpers.queueToString)
      List<String> coordinates});

  @override
  $LatLongModelCopyWith<$Res> get startPoint;
  @override
  $LatLongModelCopyWith<$Res> get endPoint;
  @override
  $TarifModelCopyWith<$Res>? get tariff;
}

/// @nodoc
class __$$RideModelImplCopyWithImpl<$Res>
    extends _$RideModelCopyWithImpl<$Res, _$RideModelImpl>
    implements _$$RideModelImplCopyWith<$Res> {
  __$$RideModelImplCopyWithImpl(
      _$RideModelImpl _value, $Res Function(_$RideModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bicycleId = null,
    Object? lockerId = null,
    Object? userId = null,
    Object? qrCode = null,
    Object? pricePerMinute = null,
    Object? pausePricePerMinute = null,
    Object? startPrice = null,
    Object? startPoint = null,
    Object? endPoint = null,
    Object? tariff = freezed,
    Object? startAt = null,
    Object? finishedAt = null,
    Object? image = null,
    Object? pouseTime = null,
    Object? ridingTime = null,
    Object? total = null,
    Object? coordinates = null,
  }) {
    return _then(_$RideModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bicycleId: null == bicycleId
          ? _value.bicycleId
          : bicycleId // ignore: cast_nullable_to_non_nullable
              as int,
      lockerId: null == lockerId
          ? _value.lockerId
          : lockerId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerMinute: null == pricePerMinute
          ? _value.pricePerMinute
          : pricePerMinute // ignore: cast_nullable_to_non_nullable
              as double,
      pausePricePerMinute: null == pausePricePerMinute
          ? _value.pausePricePerMinute
          : pausePricePerMinute // ignore: cast_nullable_to_non_nullable
              as double,
      startPrice: null == startPrice
          ? _value.startPrice
          : startPrice // ignore: cast_nullable_to_non_nullable
              as double,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as LatLongModel,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as LatLongModel,
      tariff: freezed == tariff
          ? _value.tariff
          : tariff // ignore: cast_nullable_to_non_nullable
              as TarifModel?,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      finishedAt: null == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      pouseTime: null == pouseTime
          ? _value.pouseTime
          : pouseTime // ignore: cast_nullable_to_non_nullable
              as int,
      ridingTime: null == ridingTime
          ? _value.ridingTime
          : ridingTime // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RideModelImpl implements _RideModel {
  _$RideModelImpl(
      {required this.id,
      required this.bicycleId,
      required this.lockerId,
      required this.userId,
      @JsonKey(defaultValue: "") required this.qrCode,
      @JsonKey(fromJson: JsonHelpers.intToDouble) required this.pricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble)
      required this.pausePricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble) required this.startPrice,
      required this.startPoint,
      required this.endPoint,
      required this.tariff,
      @JsonKey(defaultValue: "") required this.startAt,
      @JsonKey(defaultValue: "") required this.finishedAt,
      @JsonKey(defaultValue: "") required this.image,
      @JsonKey(defaultValue: 0) required this.pouseTime,
      @JsonKey(defaultValue: 0) required this.ridingTime,
      @JsonKey(defaultValue: 0, fromJson: JsonHelpers.intToDouble)
      required this.total,
      @JsonKey(defaultValue: [], fromJson: JsonHelpers.queueToString)
      required final List<String> coordinates})
      : _coordinates = coordinates;

  factory _$RideModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RideModelImplFromJson(json);

  @override
  final int id;
  @override
  final int bicycleId;
  @override
  final int lockerId;
  @override
  final int userId;
  @override
  @JsonKey(defaultValue: "")
  final String qrCode;
  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  final double pricePerMinute;
  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  final double pausePricePerMinute;
  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  final double startPrice;
  @override
  final LatLongModel startPoint;
  @override
  final LatLongModel endPoint;
  @override
  final TarifModel? tariff;
  @override
  @JsonKey(defaultValue: "")
  final String startAt;
  @override
  @JsonKey(defaultValue: "")
  final String finishedAt;
  @override
  @JsonKey(defaultValue: "")
  final String image;
  @override
  @JsonKey(defaultValue: 0)
  final int pouseTime;
  @override
  @JsonKey(defaultValue: 0)
  final int ridingTime;
  @override
  @JsonKey(defaultValue: 0, fromJson: JsonHelpers.intToDouble)
  final double total;
  final List<String> _coordinates;
  @override
  @JsonKey(defaultValue: [], fromJson: JsonHelpers.queueToString)
  List<String> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'RideModel(id: $id, bicycleId: $bicycleId, lockerId: $lockerId, userId: $userId, qrCode: $qrCode, pricePerMinute: $pricePerMinute, pausePricePerMinute: $pausePricePerMinute, startPrice: $startPrice, startPoint: $startPoint, endPoint: $endPoint, tariff: $tariff, startAt: $startAt, finishedAt: $finishedAt, image: $image, pouseTime: $pouseTime, ridingTime: $ridingTime, total: $total, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RideModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bicycleId, bicycleId) ||
                other.bicycleId == bicycleId) &&
            (identical(other.lockerId, lockerId) ||
                other.lockerId == lockerId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.pricePerMinute, pricePerMinute) ||
                other.pricePerMinute == pricePerMinute) &&
            (identical(other.pausePricePerMinute, pausePricePerMinute) ||
                other.pausePricePerMinute == pausePricePerMinute) &&
            (identical(other.startPrice, startPrice) ||
                other.startPrice == startPrice) &&
            (identical(other.startPoint, startPoint) ||
                other.startPoint == startPoint) &&
            (identical(other.endPoint, endPoint) ||
                other.endPoint == endPoint) &&
            (identical(other.tariff, tariff) || other.tariff == tariff) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.finishedAt, finishedAt) ||
                other.finishedAt == finishedAt) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.pouseTime, pouseTime) ||
                other.pouseTime == pouseTime) &&
            (identical(other.ridingTime, ridingTime) ||
                other.ridingTime == ridingTime) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bicycleId,
      lockerId,
      userId,
      qrCode,
      pricePerMinute,
      pausePricePerMinute,
      startPrice,
      startPoint,
      endPoint,
      tariff,
      startAt,
      finishedAt,
      image,
      pouseTime,
      ridingTime,
      total,
      const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RideModelImplCopyWith<_$RideModelImpl> get copyWith =>
      __$$RideModelImplCopyWithImpl<_$RideModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RideModelImplToJson(
      this,
    );
  }
}

abstract class _RideModel implements RideModel {
  factory _RideModel(
      {required final int id,
      required final int bicycleId,
      required final int lockerId,
      required final int userId,
      @JsonKey(defaultValue: "") required final String qrCode,
      @JsonKey(fromJson: JsonHelpers.intToDouble)
      required final double pricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble)
      required final double pausePricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble)
      required final double startPrice,
      required final LatLongModel startPoint,
      required final LatLongModel endPoint,
      required final TarifModel? tariff,
      @JsonKey(defaultValue: "") required final String startAt,
      @JsonKey(defaultValue: "") required final String finishedAt,
      @JsonKey(defaultValue: "") required final String image,
      @JsonKey(defaultValue: 0) required final int pouseTime,
      @JsonKey(defaultValue: 0) required final int ridingTime,
      @JsonKey(defaultValue: 0, fromJson: JsonHelpers.intToDouble)
      required final double total,
      @JsonKey(defaultValue: [], fromJson: JsonHelpers.queueToString)
      required final List<String> coordinates}) = _$RideModelImpl;

  factory _RideModel.fromJson(Map<String, dynamic> json) =
      _$RideModelImpl.fromJson;

  @override
  int get id;
  @override
  int get bicycleId;
  @override
  int get lockerId;
  @override
  int get userId;
  @override
  @JsonKey(defaultValue: "")
  String get qrCode;
  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get pricePerMinute;
  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get pausePricePerMinute;
  @override
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get startPrice;
  @override
  LatLongModel get startPoint;
  @override
  LatLongModel get endPoint;
  @override
  TarifModel? get tariff;
  @override
  @JsonKey(defaultValue: "")
  String get startAt;
  @override
  @JsonKey(defaultValue: "")
  String get finishedAt;
  @override
  @JsonKey(defaultValue: "")
  String get image;
  @override
  @JsonKey(defaultValue: 0)
  int get pouseTime;
  @override
  @JsonKey(defaultValue: 0)
  int get ridingTime;
  @override
  @JsonKey(defaultValue: 0, fromJson: JsonHelpers.intToDouble)
  double get total;
  @override
  @JsonKey(defaultValue: [], fromJson: JsonHelpers.queueToString)
  List<String> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$RideModelImplCopyWith<_$RideModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
