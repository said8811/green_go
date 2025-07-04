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
  @JsonKey(defaultValue: "")
  String get qrCode => throw _privateConstructorUsedError;
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get pricePerMinute => throw _privateConstructorUsedError;
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get pausePricePerMinute => throw _privateConstructorUsedError;
  @JsonKey(fromJson: JsonHelpers.intToDouble)
  double get startPrice => throw _privateConstructorUsedError;
  TarifModel? get tariff => throw _privateConstructorUsedError;
  @JsonKey(fromJson: JsonHelpers.stringToDateTime)
  DateTime? get startAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: JsonHelpers.stringToDateTime)
  DateTime? get finishedAt => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get pauseTime => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get status => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get ridingTime => throw _privateConstructorUsedError;
  PauseModel? get pause => throw _privateConstructorUsedError;
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
      @JsonKey(defaultValue: "") String qrCode,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double pricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double pausePricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double startPrice,
      TarifModel? tariff,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime) DateTime? startAt,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime) DateTime? finishedAt,
      @JsonKey(defaultValue: "") String image,
      @JsonKey(defaultValue: 0) int pauseTime,
      @JsonKey(defaultValue: 0) int status,
      @JsonKey(defaultValue: 0) int ridingTime,
      PauseModel? pause,
      @JsonKey(defaultValue: 0, fromJson: JsonHelpers.intToDouble) double total,
      @JsonKey(defaultValue: [], fromJson: JsonHelpers.queueToString)
      List<String> coordinates});

  $TarifModelCopyWith<$Res>? get tariff;
  $PauseModelCopyWith<$Res>? get pause;
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
    Object? qrCode = null,
    Object? pricePerMinute = null,
    Object? pausePricePerMinute = null,
    Object? startPrice = null,
    Object? tariff = freezed,
    Object? startAt = freezed,
    Object? finishedAt = freezed,
    Object? image = null,
    Object? pauseTime = null,
    Object? status = null,
    Object? ridingTime = null,
    Object? pause = freezed,
    Object? total = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      tariff: freezed == tariff
          ? _value.tariff
          : tariff // ignore: cast_nullable_to_non_nullable
              as TarifModel?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      pauseTime: null == pauseTime
          ? _value.pauseTime
          : pauseTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      ridingTime: null == ridingTime
          ? _value.ridingTime
          : ridingTime // ignore: cast_nullable_to_non_nullable
              as int,
      pause: freezed == pause
          ? _value.pause
          : pause // ignore: cast_nullable_to_non_nullable
              as PauseModel?,
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
  $TarifModelCopyWith<$Res>? get tariff {
    if (_value.tariff == null) {
      return null;
    }

    return $TarifModelCopyWith<$Res>(_value.tariff!, (value) {
      return _then(_value.copyWith(tariff: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PauseModelCopyWith<$Res>? get pause {
    if (_value.pause == null) {
      return null;
    }

    return $PauseModelCopyWith<$Res>(_value.pause!, (value) {
      return _then(_value.copyWith(pause: value) as $Val);
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
      @JsonKey(defaultValue: "") String qrCode,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double pricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double pausePricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble) double startPrice,
      TarifModel? tariff,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime) DateTime? startAt,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime) DateTime? finishedAt,
      @JsonKey(defaultValue: "") String image,
      @JsonKey(defaultValue: 0) int pauseTime,
      @JsonKey(defaultValue: 0) int status,
      @JsonKey(defaultValue: 0) int ridingTime,
      PauseModel? pause,
      @JsonKey(defaultValue: 0, fromJson: JsonHelpers.intToDouble) double total,
      @JsonKey(defaultValue: [], fromJson: JsonHelpers.queueToString)
      List<String> coordinates});

  @override
  $TarifModelCopyWith<$Res>? get tariff;
  @override
  $PauseModelCopyWith<$Res>? get pause;
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
    Object? qrCode = null,
    Object? pricePerMinute = null,
    Object? pausePricePerMinute = null,
    Object? startPrice = null,
    Object? tariff = freezed,
    Object? startAt = freezed,
    Object? finishedAt = freezed,
    Object? image = null,
    Object? pauseTime = null,
    Object? status = null,
    Object? ridingTime = null,
    Object? pause = freezed,
    Object? total = null,
    Object? coordinates = null,
  }) {
    return _then(_$RideModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      tariff: freezed == tariff
          ? _value.tariff
          : tariff // ignore: cast_nullable_to_non_nullable
              as TarifModel?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      pauseTime: null == pauseTime
          ? _value.pauseTime
          : pauseTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      ridingTime: null == ridingTime
          ? _value.ridingTime
          : ridingTime // ignore: cast_nullable_to_non_nullable
              as int,
      pause: freezed == pause
          ? _value.pause
          : pause // ignore: cast_nullable_to_non_nullable
              as PauseModel?,
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
      @JsonKey(defaultValue: "") required this.qrCode,
      @JsonKey(fromJson: JsonHelpers.intToDouble) required this.pricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble)
      required this.pausePricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble) required this.startPrice,
      required this.tariff,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime) this.startAt,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime) this.finishedAt,
      @JsonKey(defaultValue: "") required this.image,
      @JsonKey(defaultValue: 0) required this.pauseTime,
      @JsonKey(defaultValue: 0) required this.status,
      @JsonKey(defaultValue: 0) required this.ridingTime,
      required this.pause,
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
  final TarifModel? tariff;
  @override
  @JsonKey(fromJson: JsonHelpers.stringToDateTime)
  final DateTime? startAt;
  @override
  @JsonKey(fromJson: JsonHelpers.stringToDateTime)
  final DateTime? finishedAt;
  @override
  @JsonKey(defaultValue: "")
  final String image;
  @override
  @JsonKey(defaultValue: 0)
  final int pauseTime;
  @override
  @JsonKey(defaultValue: 0)
  final int status;
  @override
  @JsonKey(defaultValue: 0)
  final int ridingTime;
  @override
  final PauseModel? pause;
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
    return 'RideModel(id: $id, qrCode: $qrCode, pricePerMinute: $pricePerMinute, pausePricePerMinute: $pausePricePerMinute, startPrice: $startPrice, tariff: $tariff, startAt: $startAt, finishedAt: $finishedAt, image: $image, pauseTime: $pauseTime, status: $status, ridingTime: $ridingTime, pause: $pause, total: $total, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RideModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.pricePerMinute, pricePerMinute) ||
                other.pricePerMinute == pricePerMinute) &&
            (identical(other.pausePricePerMinute, pausePricePerMinute) ||
                other.pausePricePerMinute == pausePricePerMinute) &&
            (identical(other.startPrice, startPrice) ||
                other.startPrice == startPrice) &&
            (identical(other.tariff, tariff) || other.tariff == tariff) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.finishedAt, finishedAt) ||
                other.finishedAt == finishedAt) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.pauseTime, pauseTime) ||
                other.pauseTime == pauseTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ridingTime, ridingTime) ||
                other.ridingTime == ridingTime) &&
            (identical(other.pause, pause) || other.pause == pause) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      qrCode,
      pricePerMinute,
      pausePricePerMinute,
      startPrice,
      tariff,
      startAt,
      finishedAt,
      image,
      pauseTime,
      status,
      ridingTime,
      pause,
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
      @JsonKey(defaultValue: "") required final String qrCode,
      @JsonKey(fromJson: JsonHelpers.intToDouble)
      required final double pricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble)
      required final double pausePricePerMinute,
      @JsonKey(fromJson: JsonHelpers.intToDouble)
      required final double startPrice,
      required final TarifModel? tariff,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime) final DateTime? startAt,
      @JsonKey(fromJson: JsonHelpers.stringToDateTime)
      final DateTime? finishedAt,
      @JsonKey(defaultValue: "") required final String image,
      @JsonKey(defaultValue: 0) required final int pauseTime,
      @JsonKey(defaultValue: 0) required final int status,
      @JsonKey(defaultValue: 0) required final int ridingTime,
      required final PauseModel? pause,
      @JsonKey(defaultValue: 0, fromJson: JsonHelpers.intToDouble)
      required final double total,
      @JsonKey(defaultValue: [], fromJson: JsonHelpers.queueToString)
      required final List<String> coordinates}) = _$RideModelImpl;

  factory _RideModel.fromJson(Map<String, dynamic> json) =
      _$RideModelImpl.fromJson;

  @override
  int get id;
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
  TarifModel? get tariff;
  @override
  @JsonKey(fromJson: JsonHelpers.stringToDateTime)
  DateTime? get startAt;
  @override
  @JsonKey(fromJson: JsonHelpers.stringToDateTime)
  DateTime? get finishedAt;
  @override
  @JsonKey(defaultValue: "")
  String get image;
  @override
  @JsonKey(defaultValue: 0)
  int get pauseTime;
  @override
  @JsonKey(defaultValue: 0)
  int get status;
  @override
  @JsonKey(defaultValue: 0)
  int get ridingTime;
  @override
  PauseModel? get pause;
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
