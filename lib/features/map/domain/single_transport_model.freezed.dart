// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_transport_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SingleTransportModel _$SingleTransportModelFromJson(Map<String, dynamic> json) {
  return _SingleTransportModel.fromJson(json);
}

/// @nodoc
mixin _$SingleTransportModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get nameRu => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get nameUz => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get nameEn => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  List<TarifModel> get tariffs => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0.0)
  double get distance => throw _privateConstructorUsedError;
  BookModel? get book => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleTransportModelCopyWith<SingleTransportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleTransportModelCopyWith<$Res> {
  factory $SingleTransportModelCopyWith(SingleTransportModel value,
          $Res Function(SingleTransportModel) then) =
      _$SingleTransportModelCopyWithImpl<$Res, SingleTransportModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(defaultValue: "") String image,
      @JsonKey(defaultValue: "") String nameRu,
      @JsonKey(defaultValue: "") String nameUz,
      @JsonKey(defaultValue: "") String nameEn,
      String number,
      String qrCode,
      List<TarifModel> tariffs,
      @JsonKey(defaultValue: 0.0) double distance,
      BookModel? book});

  $BookModelCopyWith<$Res>? get book;
}

/// @nodoc
class _$SingleTransportModelCopyWithImpl<$Res,
        $Val extends SingleTransportModel>
    implements $SingleTransportModelCopyWith<$Res> {
  _$SingleTransportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? nameRu = null,
    Object? nameUz = null,
    Object? nameEn = null,
    Object? number = null,
    Object? qrCode = null,
    Object? tariffs = null,
    Object? distance = null,
    Object? book = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
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
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      tariffs: null == tariffs
          ? _value.tariffs
          : tariffs // ignore: cast_nullable_to_non_nullable
              as List<TarifModel>,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookModelCopyWith<$Res>? get book {
    if (_value.book == null) {
      return null;
    }

    return $BookModelCopyWith<$Res>(_value.book!, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SingleTransportModelImplCopyWith<$Res>
    implements $SingleTransportModelCopyWith<$Res> {
  factory _$$SingleTransportModelImplCopyWith(_$SingleTransportModelImpl value,
          $Res Function(_$SingleTransportModelImpl) then) =
      __$$SingleTransportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(defaultValue: "") String image,
      @JsonKey(defaultValue: "") String nameRu,
      @JsonKey(defaultValue: "") String nameUz,
      @JsonKey(defaultValue: "") String nameEn,
      String number,
      String qrCode,
      List<TarifModel> tariffs,
      @JsonKey(defaultValue: 0.0) double distance,
      BookModel? book});

  @override
  $BookModelCopyWith<$Res>? get book;
}

/// @nodoc
class __$$SingleTransportModelImplCopyWithImpl<$Res>
    extends _$SingleTransportModelCopyWithImpl<$Res, _$SingleTransportModelImpl>
    implements _$$SingleTransportModelImplCopyWith<$Res> {
  __$$SingleTransportModelImplCopyWithImpl(_$SingleTransportModelImpl _value,
      $Res Function(_$SingleTransportModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? nameRu = null,
    Object? nameUz = null,
    Object? nameEn = null,
    Object? number = null,
    Object? qrCode = null,
    Object? tariffs = null,
    Object? distance = null,
    Object? book = freezed,
  }) {
    return _then(_$SingleTransportModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
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
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      tariffs: null == tariffs
          ? _value._tariffs
          : tariffs // ignore: cast_nullable_to_non_nullable
              as List<TarifModel>,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleTransportModelImpl extends _SingleTransportModel {
  _$SingleTransportModelImpl(
      {required this.id,
      @JsonKey(defaultValue: "") required this.image,
      @JsonKey(defaultValue: "") required this.nameRu,
      @JsonKey(defaultValue: "") required this.nameUz,
      @JsonKey(defaultValue: "") required this.nameEn,
      required this.number,
      required this.qrCode,
      required final List<TarifModel> tariffs,
      @JsonKey(defaultValue: 0.0) required this.distance,
      required this.book})
      : _tariffs = tariffs,
        super._();

  factory _$SingleTransportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleTransportModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(defaultValue: "")
  final String image;
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
  final String number;
  @override
  final String qrCode;
  final List<TarifModel> _tariffs;
  @override
  List<TarifModel> get tariffs {
    if (_tariffs is EqualUnmodifiableListView) return _tariffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tariffs);
  }

  @override
  @JsonKey(defaultValue: 0.0)
  final double distance;
  @override
  final BookModel? book;

  @override
  String toString() {
    return 'SingleTransportModel(id: $id, image: $image, nameRu: $nameRu, nameUz: $nameUz, nameEn: $nameEn, number: $number, qrCode: $qrCode, tariffs: $tariffs, distance: $distance, book: $book)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleTransportModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.nameRu, nameRu) || other.nameRu == nameRu) &&
            (identical(other.nameUz, nameUz) || other.nameUz == nameUz) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            const DeepCollectionEquality().equals(other._tariffs, _tariffs) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.book, book) || other.book == book));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image,
      nameRu,
      nameUz,
      nameEn,
      number,
      qrCode,
      const DeepCollectionEquality().hash(_tariffs),
      distance,
      book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleTransportModelImplCopyWith<_$SingleTransportModelImpl>
      get copyWith =>
          __$$SingleTransportModelImplCopyWithImpl<_$SingleTransportModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleTransportModelImplToJson(
      this,
    );
  }
}

abstract class _SingleTransportModel extends SingleTransportModel {
  factory _SingleTransportModel(
      {required final int id,
      @JsonKey(defaultValue: "") required final String image,
      @JsonKey(defaultValue: "") required final String nameRu,
      @JsonKey(defaultValue: "") required final String nameUz,
      @JsonKey(defaultValue: "") required final String nameEn,
      required final String number,
      required final String qrCode,
      required final List<TarifModel> tariffs,
      @JsonKey(defaultValue: 0.0) required final double distance,
      required final BookModel? book}) = _$SingleTransportModelImpl;
  _SingleTransportModel._() : super._();

  factory _SingleTransportModel.fromJson(Map<String, dynamic> json) =
      _$SingleTransportModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(defaultValue: "")
  String get image;
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
  String get number;
  @override
  String get qrCode;
  @override
  List<TarifModel> get tariffs;
  @override
  @JsonKey(defaultValue: 0.0)
  double get distance;
  @override
  BookModel? get book;
  @override
  @JsonKey(ignore: true)
  _$$SingleTransportModelImplCopyWith<_$SingleTransportModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
