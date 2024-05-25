// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tarif_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TarifModel _$TarifModelFromJson(Map<String, dynamic> json) {
  return _TarifModel.fromJson(json);
}

/// @nodoc
mixin _$TarifModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get nameRu => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get nameUz => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get nameEn => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get descriptionRu => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get descriptionUz => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get descriptionEn => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get startMinute => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get reservedAmount => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get activateCount => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get price => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get startPrice => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get pricePerMinute => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get pausePricePerMinute => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<TarifFieldModel> get tariffFields => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: TarifInfoModel.initial)
  TarifInfoModel get tariffInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TarifModelCopyWith<TarifModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TarifModelCopyWith<$Res> {
  factory $TarifModelCopyWith(
          TarifModel value, $Res Function(TarifModel) then) =
      _$TarifModelCopyWithImpl<$Res, TarifModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(defaultValue: "") String nameRu,
      @JsonKey(defaultValue: "") String nameUz,
      @JsonKey(defaultValue: "") String nameEn,
      @JsonKey(defaultValue: "") String descriptionRu,
      @JsonKey(defaultValue: "") String descriptionUz,
      @JsonKey(defaultValue: "") String descriptionEn,
      @JsonKey(defaultValue: 0) int startMinute,
      @JsonKey(defaultValue: 0) int reservedAmount,
      @JsonKey(defaultValue: 0) int activateCount,
      @JsonKey(defaultValue: 0) int price,
      @JsonKey(defaultValue: 0) int startPrice,
      @JsonKey(defaultValue: 0) int pricePerMinute,
      @JsonKey(defaultValue: 0) int pausePricePerMinute,
      @JsonKey(defaultValue: []) List<TarifFieldModel> tariffFields,
      @JsonKey(defaultValue: TarifInfoModel.initial)
      TarifInfoModel tariffInfo});

  $TarifInfoModelCopyWith<$Res> get tariffInfo;
}

/// @nodoc
class _$TarifModelCopyWithImpl<$Res, $Val extends TarifModel>
    implements $TarifModelCopyWith<$Res> {
  _$TarifModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameRu = null,
    Object? nameUz = null,
    Object? nameEn = null,
    Object? descriptionRu = null,
    Object? descriptionUz = null,
    Object? descriptionEn = null,
    Object? startMinute = null,
    Object? reservedAmount = null,
    Object? activateCount = null,
    Object? price = null,
    Object? startPrice = null,
    Object? pricePerMinute = null,
    Object? pausePricePerMinute = null,
    Object? tariffFields = null,
    Object? tariffInfo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameRu: null == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String,
      nameUz: null == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionRu: null == descriptionRu
          ? _value.descriptionRu
          : descriptionRu // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionUz: null == descriptionUz
          ? _value.descriptionUz
          : descriptionUz // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: null == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String,
      startMinute: null == startMinute
          ? _value.startMinute
          : startMinute // ignore: cast_nullable_to_non_nullable
              as int,
      reservedAmount: null == reservedAmount
          ? _value.reservedAmount
          : reservedAmount // ignore: cast_nullable_to_non_nullable
              as int,
      activateCount: null == activateCount
          ? _value.activateCount
          : activateCount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
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
      tariffFields: null == tariffFields
          ? _value.tariffFields
          : tariffFields // ignore: cast_nullable_to_non_nullable
              as List<TarifFieldModel>,
      tariffInfo: null == tariffInfo
          ? _value.tariffInfo
          : tariffInfo // ignore: cast_nullable_to_non_nullable
              as TarifInfoModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TarifInfoModelCopyWith<$Res> get tariffInfo {
    return $TarifInfoModelCopyWith<$Res>(_value.tariffInfo, (value) {
      return _then(_value.copyWith(tariffInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TarifModelImplCopyWith<$Res>
    implements $TarifModelCopyWith<$Res> {
  factory _$$TarifModelImplCopyWith(
          _$TarifModelImpl value, $Res Function(_$TarifModelImpl) then) =
      __$$TarifModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(defaultValue: "") String nameRu,
      @JsonKey(defaultValue: "") String nameUz,
      @JsonKey(defaultValue: "") String nameEn,
      @JsonKey(defaultValue: "") String descriptionRu,
      @JsonKey(defaultValue: "") String descriptionUz,
      @JsonKey(defaultValue: "") String descriptionEn,
      @JsonKey(defaultValue: 0) int startMinute,
      @JsonKey(defaultValue: 0) int reservedAmount,
      @JsonKey(defaultValue: 0) int activateCount,
      @JsonKey(defaultValue: 0) int price,
      @JsonKey(defaultValue: 0) int startPrice,
      @JsonKey(defaultValue: 0) int pricePerMinute,
      @JsonKey(defaultValue: 0) int pausePricePerMinute,
      @JsonKey(defaultValue: []) List<TarifFieldModel> tariffFields,
      @JsonKey(defaultValue: TarifInfoModel.initial)
      TarifInfoModel tariffInfo});

  @override
  $TarifInfoModelCopyWith<$Res> get tariffInfo;
}

/// @nodoc
class __$$TarifModelImplCopyWithImpl<$Res>
    extends _$TarifModelCopyWithImpl<$Res, _$TarifModelImpl>
    implements _$$TarifModelImplCopyWith<$Res> {
  __$$TarifModelImplCopyWithImpl(
      _$TarifModelImpl _value, $Res Function(_$TarifModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameRu = null,
    Object? nameUz = null,
    Object? nameEn = null,
    Object? descriptionRu = null,
    Object? descriptionUz = null,
    Object? descriptionEn = null,
    Object? startMinute = null,
    Object? reservedAmount = null,
    Object? activateCount = null,
    Object? price = null,
    Object? startPrice = null,
    Object? pricePerMinute = null,
    Object? pausePricePerMinute = null,
    Object? tariffFields = null,
    Object? tariffInfo = null,
  }) {
    return _then(_$TarifModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameRu: null == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String,
      nameUz: null == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionRu: null == descriptionRu
          ? _value.descriptionRu
          : descriptionRu // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionUz: null == descriptionUz
          ? _value.descriptionUz
          : descriptionUz // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: null == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
              as String,
      startMinute: null == startMinute
          ? _value.startMinute
          : startMinute // ignore: cast_nullable_to_non_nullable
              as int,
      reservedAmount: null == reservedAmount
          ? _value.reservedAmount
          : reservedAmount // ignore: cast_nullable_to_non_nullable
              as int,
      activateCount: null == activateCount
          ? _value.activateCount
          : activateCount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
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
      tariffFields: null == tariffFields
          ? _value._tariffFields
          : tariffFields // ignore: cast_nullable_to_non_nullable
              as List<TarifFieldModel>,
      tariffInfo: null == tariffInfo
          ? _value.tariffInfo
          : tariffInfo // ignore: cast_nullable_to_non_nullable
              as TarifInfoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TarifModelImpl extends _TarifModel {
  _$TarifModelImpl(
      {required this.id,
      @JsonKey(defaultValue: "") required this.nameRu,
      @JsonKey(defaultValue: "") required this.nameUz,
      @JsonKey(defaultValue: "") required this.nameEn,
      @JsonKey(defaultValue: "") required this.descriptionRu,
      @JsonKey(defaultValue: "") required this.descriptionUz,
      @JsonKey(defaultValue: "") required this.descriptionEn,
      @JsonKey(defaultValue: 0) required this.startMinute,
      @JsonKey(defaultValue: 0) required this.reservedAmount,
      @JsonKey(defaultValue: 0) required this.activateCount,
      @JsonKey(defaultValue: 0) required this.price,
      @JsonKey(defaultValue: 0) required this.startPrice,
      @JsonKey(defaultValue: 0) required this.pricePerMinute,
      @JsonKey(defaultValue: 0) required this.pausePricePerMinute,
      @JsonKey(defaultValue: [])
      required final List<TarifFieldModel> tariffFields,
      @JsonKey(defaultValue: TarifInfoModel.initial) required this.tariffInfo})
      : _tariffFields = tariffFields,
        super._();

  factory _$TarifModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TarifModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(defaultValue: "")
  final String nameRu;
  @override
  @JsonKey(defaultValue: "")
  final String nameUz;
  @override
  @JsonKey(defaultValue: "")
  final String nameEn;
  @override
  @JsonKey(defaultValue: "")
  final String descriptionRu;
  @override
  @JsonKey(defaultValue: "")
  final String descriptionUz;
  @override
  @JsonKey(defaultValue: "")
  final String descriptionEn;
  @override
  @JsonKey(defaultValue: 0)
  final int startMinute;
  @override
  @JsonKey(defaultValue: 0)
  final int reservedAmount;
  @override
  @JsonKey(defaultValue: 0)
  final int activateCount;
  @override
  @JsonKey(defaultValue: 0)
  final int price;
  @override
  @JsonKey(defaultValue: 0)
  final int startPrice;
  @override
  @JsonKey(defaultValue: 0)
  final int pricePerMinute;
  @override
  @JsonKey(defaultValue: 0)
  final int pausePricePerMinute;
  final List<TarifFieldModel> _tariffFields;
  @override
  @JsonKey(defaultValue: [])
  List<TarifFieldModel> get tariffFields {
    if (_tariffFields is EqualUnmodifiableListView) return _tariffFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tariffFields);
  }

  @override
  @JsonKey(defaultValue: TarifInfoModel.initial)
  final TarifInfoModel tariffInfo;

  @override
  String toString() {
    return 'TarifModel(id: $id, nameRu: $nameRu, nameUz: $nameUz, nameEn: $nameEn, descriptionRu: $descriptionRu, descriptionUz: $descriptionUz, descriptionEn: $descriptionEn, startMinute: $startMinute, reservedAmount: $reservedAmount, activateCount: $activateCount, price: $price, startPrice: $startPrice, pricePerMinute: $pricePerMinute, pausePricePerMinute: $pausePricePerMinute, tariffFields: $tariffFields, tariffInfo: $tariffInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TarifModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameRu, nameRu) || other.nameRu == nameRu) &&
            (identical(other.nameUz, nameUz) || other.nameUz == nameUz) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.descriptionRu, descriptionRu) ||
                other.descriptionRu == descriptionRu) &&
            (identical(other.descriptionUz, descriptionUz) ||
                other.descriptionUz == descriptionUz) &&
            (identical(other.descriptionEn, descriptionEn) ||
                other.descriptionEn == descriptionEn) &&
            (identical(other.startMinute, startMinute) ||
                other.startMinute == startMinute) &&
            (identical(other.reservedAmount, reservedAmount) ||
                other.reservedAmount == reservedAmount) &&
            (identical(other.activateCount, activateCount) ||
                other.activateCount == activateCount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.startPrice, startPrice) ||
                other.startPrice == startPrice) &&
            (identical(other.pricePerMinute, pricePerMinute) ||
                other.pricePerMinute == pricePerMinute) &&
            (identical(other.pausePricePerMinute, pausePricePerMinute) ||
                other.pausePricePerMinute == pausePricePerMinute) &&
            const DeepCollectionEquality()
                .equals(other._tariffFields, _tariffFields) &&
            (identical(other.tariffInfo, tariffInfo) ||
                other.tariffInfo == tariffInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nameRu,
      nameUz,
      nameEn,
      descriptionRu,
      descriptionUz,
      descriptionEn,
      startMinute,
      reservedAmount,
      activateCount,
      price,
      startPrice,
      pricePerMinute,
      pausePricePerMinute,
      const DeepCollectionEquality().hash(_tariffFields),
      tariffInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TarifModelImplCopyWith<_$TarifModelImpl> get copyWith =>
      __$$TarifModelImplCopyWithImpl<_$TarifModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TarifModelImplToJson(
      this,
    );
  }
}

abstract class _TarifModel extends TarifModel {
  factory _TarifModel(
      {required final int id,
      @JsonKey(defaultValue: "") required final String nameRu,
      @JsonKey(defaultValue: "") required final String nameUz,
      @JsonKey(defaultValue: "") required final String nameEn,
      @JsonKey(defaultValue: "") required final String descriptionRu,
      @JsonKey(defaultValue: "") required final String descriptionUz,
      @JsonKey(defaultValue: "") required final String descriptionEn,
      @JsonKey(defaultValue: 0) required final int startMinute,
      @JsonKey(defaultValue: 0) required final int reservedAmount,
      @JsonKey(defaultValue: 0) required final int activateCount,
      @JsonKey(defaultValue: 0) required final int price,
      @JsonKey(defaultValue: 0) required final int startPrice,
      @JsonKey(defaultValue: 0) required final int pricePerMinute,
      @JsonKey(defaultValue: 0) required final int pausePricePerMinute,
      @JsonKey(defaultValue: [])
      required final List<TarifFieldModel> tariffFields,
      @JsonKey(defaultValue: TarifInfoModel.initial)
      required final TarifInfoModel tariffInfo}) = _$TarifModelImpl;
  _TarifModel._() : super._();

  factory _TarifModel.fromJson(Map<String, dynamic> json) =
      _$TarifModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(defaultValue: "")
  String get nameRu;
  @override
  @JsonKey(defaultValue: "")
  String get nameUz;
  @override
  @JsonKey(defaultValue: "")
  String get nameEn;
  @override
  @JsonKey(defaultValue: "")
  String get descriptionRu;
  @override
  @JsonKey(defaultValue: "")
  String get descriptionUz;
  @override
  @JsonKey(defaultValue: "")
  String get descriptionEn;
  @override
  @JsonKey(defaultValue: 0)
  int get startMinute;
  @override
  @JsonKey(defaultValue: 0)
  int get reservedAmount;
  @override
  @JsonKey(defaultValue: 0)
  int get activateCount;
  @override
  @JsonKey(defaultValue: 0)
  int get price;
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
  @JsonKey(defaultValue: [])
  List<TarifFieldModel> get tariffFields;
  @override
  @JsonKey(defaultValue: TarifInfoModel.initial)
  TarifInfoModel get tariffInfo;
  @override
  @JsonKey(ignore: true)
  _$$TarifModelImplCopyWith<_$TarifModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
