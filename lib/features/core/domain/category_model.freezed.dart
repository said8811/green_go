// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get nameRu => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get nameEn => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get nameUz => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<TransportModel> get transports => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {int id,
      String image,
      @JsonKey(defaultValue: "") String nameRu,
      @JsonKey(defaultValue: "") String nameEn,
      @JsonKey(defaultValue: "") String nameUz,
      @JsonKey(defaultValue: []) List<TransportModel> transports,
      String type});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

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
    Object? nameEn = null,
    Object? nameUz = null,
    Object? transports = null,
    Object? type = null,
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
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameUz: null == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String,
      transports: null == transports
          ? _value.transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<TransportModel>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String image,
      @JsonKey(defaultValue: "") String nameRu,
      @JsonKey(defaultValue: "") String nameEn,
      @JsonKey(defaultValue: "") String nameUz,
      @JsonKey(defaultValue: []) List<TransportModel> transports,
      String type});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? nameRu = null,
    Object? nameEn = null,
    Object? nameUz = null,
    Object? transports = null,
    Object? type = null,
  }) {
    return _then(_$CategoryModelImpl(
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
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      nameUz: null == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String,
      transports: null == transports
          ? _value._transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<TransportModel>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  _$CategoryModelImpl(
      {required this.id,
      required this.image,
      @JsonKey(defaultValue: "") required this.nameRu,
      @JsonKey(defaultValue: "") required this.nameEn,
      @JsonKey(defaultValue: "") required this.nameUz,
      @JsonKey(defaultValue: []) required final List<TransportModel> transports,
      required this.type})
      : _transports = transports;

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  final int id;
  @override
  final String image;
  @override
  @JsonKey(defaultValue: "")
  final String nameRu;
  @override
  @JsonKey(defaultValue: "")
  final String nameEn;
  @override
  @JsonKey(defaultValue: "")
  final String nameUz;
  final List<TransportModel> _transports;
  @override
  @JsonKey(defaultValue: [])
  List<TransportModel> get transports {
    if (_transports is EqualUnmodifiableListView) return _transports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transports);
  }

  @override
  final String type;

  @override
  String toString() {
    return 'CategoryModel(id: $id, image: $image, nameRu: $nameRu, nameEn: $nameEn, nameUz: $nameUz, transports: $transports, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.nameRu, nameRu) || other.nameRu == nameRu) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameUz, nameUz) || other.nameUz == nameUz) &&
            const DeepCollectionEquality()
                .equals(other._transports, _transports) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, nameRu, nameEn,
      nameUz, const DeepCollectionEquality().hash(_transports), type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  factory _CategoryModel(
      {required final int id,
      required final String image,
      @JsonKey(defaultValue: "") required final String nameRu,
      @JsonKey(defaultValue: "") required final String nameEn,
      @JsonKey(defaultValue: "") required final String nameUz,
      @JsonKey(defaultValue: []) required final List<TransportModel> transports,
      required final String type}) = _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  int get id;
  @override
  String get image;
  @override
  @JsonKey(defaultValue: "")
  String get nameRu;
  @override
  @JsonKey(defaultValue: "")
  String get nameEn;
  @override
  @JsonKey(defaultValue: "")
  String get nameUz;
  @override
  @JsonKey(defaultValue: [])
  List<TransportModel> get transports;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
