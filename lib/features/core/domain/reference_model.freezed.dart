// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reference_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReferenceModel _$ReferenceModelFromJson(Map<String, dynamic> json) {
  return _ReferenceModel.fromJson(json);
}

/// @nodoc
mixin _$ReferenceModel {
  @JsonKey(defaultValue: [])
  List<List<CordinateModel>> get availableCoordinates =>
      throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<List<CordinateModel>> get prohibitedCoordinates =>
      throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get regionId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get regionName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<StationModel> get stations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferenceModelCopyWith<ReferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferenceModelCopyWith<$Res> {
  factory $ReferenceModelCopyWith(
          ReferenceModel value, $Res Function(ReferenceModel) then) =
      _$ReferenceModelCopyWithImpl<$Res, ReferenceModel>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: [])
      List<List<CordinateModel>> availableCoordinates,
      @JsonKey(defaultValue: []) List<CategoryModel> categories,
      @JsonKey(defaultValue: [])
      List<List<CordinateModel>> prohibitedCoordinates,
      @JsonKey(defaultValue: 0) int regionId,
      @JsonKey(defaultValue: "") String regionName,
      @JsonKey(defaultValue: []) List<StationModel> stations});
}

/// @nodoc
class _$ReferenceModelCopyWithImpl<$Res, $Val extends ReferenceModel>
    implements $ReferenceModelCopyWith<$Res> {
  _$ReferenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableCoordinates = null,
    Object? categories = null,
    Object? prohibitedCoordinates = null,
    Object? regionId = null,
    Object? regionName = null,
    Object? stations = null,
  }) {
    return _then(_value.copyWith(
      availableCoordinates: null == availableCoordinates
          ? _value.availableCoordinates
          : availableCoordinates // ignore: cast_nullable_to_non_nullable
              as List<List<CordinateModel>>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      prohibitedCoordinates: null == prohibitedCoordinates
          ? _value.prohibitedCoordinates
          : prohibitedCoordinates // ignore: cast_nullable_to_non_nullable
              as List<List<CordinateModel>>,
      regionId: null == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int,
      regionName: null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      stations: null == stations
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferenceModelImplCopyWith<$Res>
    implements $ReferenceModelCopyWith<$Res> {
  factory _$$ReferenceModelImplCopyWith(_$ReferenceModelImpl value,
          $Res Function(_$ReferenceModelImpl) then) =
      __$$ReferenceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: [])
      List<List<CordinateModel>> availableCoordinates,
      @JsonKey(defaultValue: []) List<CategoryModel> categories,
      @JsonKey(defaultValue: [])
      List<List<CordinateModel>> prohibitedCoordinates,
      @JsonKey(defaultValue: 0) int regionId,
      @JsonKey(defaultValue: "") String regionName,
      @JsonKey(defaultValue: []) List<StationModel> stations});
}

/// @nodoc
class __$$ReferenceModelImplCopyWithImpl<$Res>
    extends _$ReferenceModelCopyWithImpl<$Res, _$ReferenceModelImpl>
    implements _$$ReferenceModelImplCopyWith<$Res> {
  __$$ReferenceModelImplCopyWithImpl(
      _$ReferenceModelImpl _value, $Res Function(_$ReferenceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableCoordinates = null,
    Object? categories = null,
    Object? prohibitedCoordinates = null,
    Object? regionId = null,
    Object? regionName = null,
    Object? stations = null,
  }) {
    return _then(_$ReferenceModelImpl(
      availableCoordinates: null == availableCoordinates
          ? _value._availableCoordinates
          : availableCoordinates // ignore: cast_nullable_to_non_nullable
              as List<List<CordinateModel>>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      prohibitedCoordinates: null == prohibitedCoordinates
          ? _value._prohibitedCoordinates
          : prohibitedCoordinates // ignore: cast_nullable_to_non_nullable
              as List<List<CordinateModel>>,
      regionId: null == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int,
      regionName: null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      stations: null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferenceModelImpl implements _ReferenceModel {
  _$ReferenceModelImpl(
      {@JsonKey(defaultValue: [])
      required final List<List<CordinateModel>> availableCoordinates,
      @JsonKey(defaultValue: []) required final List<CategoryModel> categories,
      @JsonKey(defaultValue: [])
      required final List<List<CordinateModel>> prohibitedCoordinates,
      @JsonKey(defaultValue: 0) required this.regionId,
      @JsonKey(defaultValue: "") required this.regionName,
      @JsonKey(defaultValue: []) required final List<StationModel> stations})
      : _availableCoordinates = availableCoordinates,
        _categories = categories,
        _prohibitedCoordinates = prohibitedCoordinates,
        _stations = stations;

  factory _$ReferenceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferenceModelImplFromJson(json);

  final List<List<CordinateModel>> _availableCoordinates;
  @override
  @JsonKey(defaultValue: [])
  List<List<CordinateModel>> get availableCoordinates {
    if (_availableCoordinates is EqualUnmodifiableListView)
      return _availableCoordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableCoordinates);
  }

  final List<CategoryModel> _categories;
  @override
  @JsonKey(defaultValue: [])
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<List<CordinateModel>> _prohibitedCoordinates;
  @override
  @JsonKey(defaultValue: [])
  List<List<CordinateModel>> get prohibitedCoordinates {
    if (_prohibitedCoordinates is EqualUnmodifiableListView)
      return _prohibitedCoordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prohibitedCoordinates);
  }

  @override
  @JsonKey(defaultValue: 0)
  final int regionId;
  @override
  @JsonKey(defaultValue: "")
  final String regionName;
  final List<StationModel> _stations;
  @override
  @JsonKey(defaultValue: [])
  List<StationModel> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  String toString() {
    return 'ReferenceModel(availableCoordinates: $availableCoordinates, categories: $categories, prohibitedCoordinates: $prohibitedCoordinates, regionId: $regionId, regionName: $regionName, stations: $stations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferenceModelImpl &&
            const DeepCollectionEquality()
                .equals(other._availableCoordinates, _availableCoordinates) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._prohibitedCoordinates, _prohibitedCoordinates) &&
            (identical(other.regionId, regionId) ||
                other.regionId == regionId) &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName) &&
            const DeepCollectionEquality().equals(other._stations, _stations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_availableCoordinates),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_prohibitedCoordinates),
      regionId,
      regionName,
      const DeepCollectionEquality().hash(_stations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferenceModelImplCopyWith<_$ReferenceModelImpl> get copyWith =>
      __$$ReferenceModelImplCopyWithImpl<_$ReferenceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferenceModelImplToJson(
      this,
    );
  }
}

abstract class _ReferenceModel implements ReferenceModel {
  factory _ReferenceModel(
      {@JsonKey(defaultValue: [])
      required final List<List<CordinateModel>> availableCoordinates,
      @JsonKey(defaultValue: []) required final List<CategoryModel> categories,
      @JsonKey(defaultValue: [])
      required final List<List<CordinateModel>> prohibitedCoordinates,
      @JsonKey(defaultValue: 0) required final int regionId,
      @JsonKey(defaultValue: "") required final String regionName,
      @JsonKey(defaultValue: [])
      required final List<StationModel> stations}) = _$ReferenceModelImpl;

  factory _ReferenceModel.fromJson(Map<String, dynamic> json) =
      _$ReferenceModelImpl.fromJson;

  @override
  @JsonKey(defaultValue: [])
  List<List<CordinateModel>> get availableCoordinates;
  @override
  @JsonKey(defaultValue: [])
  List<CategoryModel> get categories;
  @override
  @JsonKey(defaultValue: [])
  List<List<CordinateModel>> get prohibitedCoordinates;
  @override
  @JsonKey(defaultValue: 0)
  int get regionId;
  @override
  @JsonKey(defaultValue: "")
  String get regionName;
  @override
  @JsonKey(defaultValue: [])
  List<StationModel> get stations;
  @override
  @JsonKey(ignore: true)
  _$$ReferenceModelImplCopyWith<_$ReferenceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
