// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finish_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FinishModel _$FinishModelFromJson(Map<String, dynamic> json) {
  return _FinishModel.fromJson(json);
}

/// @nodoc
mixin _$FinishModel {
  int get id => throw _privateConstructorUsedError;
  TarifModel get tariff => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get startPrice => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get pricePerMinute => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get pausePricePerMinute => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get total => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get ridingTime => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get pouseTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinishModelCopyWith<FinishModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishModelCopyWith<$Res> {
  factory $FinishModelCopyWith(
          FinishModel value, $Res Function(FinishModel) then) =
      _$FinishModelCopyWithImpl<$Res, FinishModel>;
  @useResult
  $Res call(
      {int id,
      TarifModel tariff,
      @JsonKey(defaultValue: 0) int startPrice,
      @JsonKey(defaultValue: 0) int pricePerMinute,
      @JsonKey(defaultValue: 0) int pausePricePerMinute,
      @JsonKey(defaultValue: 0) int total,
      @JsonKey(defaultValue: 0) int ridingTime,
      @JsonKey(defaultValue: 0) int pouseTime});

  $TarifModelCopyWith<$Res> get tariff;
}

/// @nodoc
class _$FinishModelCopyWithImpl<$Res, $Val extends FinishModel>
    implements $FinishModelCopyWith<$Res> {
  _$FinishModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tariff = null,
    Object? startPrice = null,
    Object? pricePerMinute = null,
    Object? pausePricePerMinute = null,
    Object? total = null,
    Object? ridingTime = null,
    Object? pouseTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tariff: null == tariff
          ? _value.tariff
          : tariff // ignore: cast_nullable_to_non_nullable
              as TarifModel,
      startPrice: null == startPrice
          ? _value.startPrice
          : startPrice // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerMinute: null == pricePerMinute
          ? _value.pricePerMinute
          : pricePerMinute // ignore: cast_nullable_to_non_nullable
              as int,
      pausePricePerMinute: null == pausePricePerMinute
          ? _value.pausePricePerMinute
          : pausePricePerMinute // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      ridingTime: null == ridingTime
          ? _value.ridingTime
          : ridingTime // ignore: cast_nullable_to_non_nullable
              as int,
      pouseTime: null == pouseTime
          ? _value.pouseTime
          : pouseTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TarifModelCopyWith<$Res> get tariff {
    return $TarifModelCopyWith<$Res>(_value.tariff, (value) {
      return _then(_value.copyWith(tariff: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FinishModelImplCopyWith<$Res>
    implements $FinishModelCopyWith<$Res> {
  factory _$$FinishModelImplCopyWith(
          _$FinishModelImpl value, $Res Function(_$FinishModelImpl) then) =
      __$$FinishModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      TarifModel tariff,
      @JsonKey(defaultValue: 0) int startPrice,
      @JsonKey(defaultValue: 0) int pricePerMinute,
      @JsonKey(defaultValue: 0) int pausePricePerMinute,
      @JsonKey(defaultValue: 0) int total,
      @JsonKey(defaultValue: 0) int ridingTime,
      @JsonKey(defaultValue: 0) int pouseTime});

  @override
  $TarifModelCopyWith<$Res> get tariff;
}

/// @nodoc
class __$$FinishModelImplCopyWithImpl<$Res>
    extends _$FinishModelCopyWithImpl<$Res, _$FinishModelImpl>
    implements _$$FinishModelImplCopyWith<$Res> {
  __$$FinishModelImplCopyWithImpl(
      _$FinishModelImpl _value, $Res Function(_$FinishModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tariff = null,
    Object? startPrice = null,
    Object? pricePerMinute = null,
    Object? pausePricePerMinute = null,
    Object? total = null,
    Object? ridingTime = null,
    Object? pouseTime = null,
  }) {
    return _then(_$FinishModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tariff: null == tariff
          ? _value.tariff
          : tariff // ignore: cast_nullable_to_non_nullable
              as TarifModel,
      startPrice: null == startPrice
          ? _value.startPrice
          : startPrice // ignore: cast_nullable_to_non_nullable
              as int,
      pricePerMinute: null == pricePerMinute
          ? _value.pricePerMinute
          : pricePerMinute // ignore: cast_nullable_to_non_nullable
              as int,
      pausePricePerMinute: null == pausePricePerMinute
          ? _value.pausePricePerMinute
          : pausePricePerMinute // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      ridingTime: null == ridingTime
          ? _value.ridingTime
          : ridingTime // ignore: cast_nullable_to_non_nullable
              as int,
      pouseTime: null == pouseTime
          ? _value.pouseTime
          : pouseTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinishModelImpl implements _FinishModel {
  _$FinishModelImpl(
      {required this.id,
      required this.tariff,
      @JsonKey(defaultValue: 0) required this.startPrice,
      @JsonKey(defaultValue: 0) required this.pricePerMinute,
      @JsonKey(defaultValue: 0) required this.pausePricePerMinute,
      @JsonKey(defaultValue: 0) required this.total,
      @JsonKey(defaultValue: 0) required this.ridingTime,
      @JsonKey(defaultValue: 0) required this.pouseTime});

  factory _$FinishModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinishModelImplFromJson(json);

  @override
  final int id;
  @override
  final TarifModel tariff;
  @override
  @JsonKey(defaultValue: 0)
  final int startPrice;
  @override
  @JsonKey(defaultValue: 0)
  final int pricePerMinute;
  @override
  @JsonKey(defaultValue: 0)
  final int pausePricePerMinute;
  @override
  @JsonKey(defaultValue: 0)
  final int total;
  @override
  @JsonKey(defaultValue: 0)
  final int ridingTime;
  @override
  @JsonKey(defaultValue: 0)
  final int pouseTime;

  @override
  String toString() {
    return 'FinishModel(id: $id, tariff: $tariff, startPrice: $startPrice, pricePerMinute: $pricePerMinute, pausePricePerMinute: $pausePricePerMinute, total: $total, ridingTime: $ridingTime, pouseTime: $pouseTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tariff, tariff) || other.tariff == tariff) &&
            (identical(other.startPrice, startPrice) ||
                other.startPrice == startPrice) &&
            (identical(other.pricePerMinute, pricePerMinute) ||
                other.pricePerMinute == pricePerMinute) &&
            (identical(other.pausePricePerMinute, pausePricePerMinute) ||
                other.pausePricePerMinute == pausePricePerMinute) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.ridingTime, ridingTime) ||
                other.ridingTime == ridingTime) &&
            (identical(other.pouseTime, pouseTime) ||
                other.pouseTime == pouseTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tariff, startPrice,
      pricePerMinute, pausePricePerMinute, total, ridingTime, pouseTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishModelImplCopyWith<_$FinishModelImpl> get copyWith =>
      __$$FinishModelImplCopyWithImpl<_$FinishModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinishModelImplToJson(
      this,
    );
  }
}

abstract class _FinishModel implements FinishModel {
  factory _FinishModel(
          {required final int id,
          required final TarifModel tariff,
          @JsonKey(defaultValue: 0) required final int startPrice,
          @JsonKey(defaultValue: 0) required final int pricePerMinute,
          @JsonKey(defaultValue: 0) required final int pausePricePerMinute,
          @JsonKey(defaultValue: 0) required final int total,
          @JsonKey(defaultValue: 0) required final int ridingTime,
          @JsonKey(defaultValue: 0) required final int pouseTime}) =
      _$FinishModelImpl;

  factory _FinishModel.fromJson(Map<String, dynamic> json) =
      _$FinishModelImpl.fromJson;

  @override
  int get id;
  @override
  TarifModel get tariff;
  @override
  @JsonKey(defaultValue: 0)
  int get startPrice;
  @override
  @JsonKey(defaultValue: 0)
  int get pricePerMinute;
  @override
  @JsonKey(defaultValue: 0)
  int get pausePricePerMinute;
  @override
  @JsonKey(defaultValue: 0)
  int get total;
  @override
  @JsonKey(defaultValue: 0)
  int get ridingTime;
  @override
  @JsonKey(defaultValue: 0)
  int get pouseTime;
  @override
  @JsonKey(ignore: true)
  _$$FinishModelImplCopyWith<_$FinishModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
