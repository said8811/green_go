// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rides_books_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RidesBooksModel _$RidesBooksModelFromJson(Map<String, dynamic> json) {
  return _RidesBooksModel.fromJson(json);
}

/// @nodoc
mixin _$RidesBooksModel {
  List<RideModel> get rides => throw _privateConstructorUsedError;
  List<BookModel> get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RidesBooksModelCopyWith<RidesBooksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidesBooksModelCopyWith<$Res> {
  factory $RidesBooksModelCopyWith(
          RidesBooksModel value, $Res Function(RidesBooksModel) then) =
      _$RidesBooksModelCopyWithImpl<$Res, RidesBooksModel>;
  @useResult
  $Res call({List<RideModel> rides, List<BookModel> books});
}

/// @nodoc
class _$RidesBooksModelCopyWithImpl<$Res, $Val extends RidesBooksModel>
    implements $RidesBooksModelCopyWith<$Res> {
  _$RidesBooksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rides = null,
    Object? books = null,
  }) {
    return _then(_value.copyWith(
      rides: null == rides
          ? _value.rides
          : rides // ignore: cast_nullable_to_non_nullable
              as List<RideModel>,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RidesBooksModelImplCopyWith<$Res>
    implements $RidesBooksModelCopyWith<$Res> {
  factory _$$RidesBooksModelImplCopyWith(_$RidesBooksModelImpl value,
          $Res Function(_$RidesBooksModelImpl) then) =
      __$$RidesBooksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RideModel> rides, List<BookModel> books});
}

/// @nodoc
class __$$RidesBooksModelImplCopyWithImpl<$Res>
    extends _$RidesBooksModelCopyWithImpl<$Res, _$RidesBooksModelImpl>
    implements _$$RidesBooksModelImplCopyWith<$Res> {
  __$$RidesBooksModelImplCopyWithImpl(
      _$RidesBooksModelImpl _value, $Res Function(_$RidesBooksModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rides = null,
    Object? books = null,
  }) {
    return _then(_$RidesBooksModelImpl(
      rides: null == rides
          ? _value._rides
          : rides // ignore: cast_nullable_to_non_nullable
              as List<RideModel>,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RidesBooksModelImpl implements _RidesBooksModel {
  _$RidesBooksModelImpl(
      {required final List<RideModel> rides,
      required final List<BookModel> books})
      : _rides = rides,
        _books = books;

  factory _$RidesBooksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RidesBooksModelImplFromJson(json);

  final List<RideModel> _rides;
  @override
  List<RideModel> get rides {
    if (_rides is EqualUnmodifiableListView) return _rides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rides);
  }

  final List<BookModel> _books;
  @override
  List<BookModel> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'RidesBooksModel(rides: $rides, books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RidesBooksModelImpl &&
            const DeepCollectionEquality().equals(other._rides, _rides) &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_rides),
      const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RidesBooksModelImplCopyWith<_$RidesBooksModelImpl> get copyWith =>
      __$$RidesBooksModelImplCopyWithImpl<_$RidesBooksModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RidesBooksModelImplToJson(
      this,
    );
  }
}

abstract class _RidesBooksModel implements RidesBooksModel {
  factory _RidesBooksModel(
      {required final List<RideModel> rides,
      required final List<BookModel> books}) = _$RidesBooksModelImpl;

  factory _RidesBooksModel.fromJson(Map<String, dynamic> json) =
      _$RidesBooksModelImpl.fromJson;

  @override
  List<RideModel> get rides;
  @override
  List<BookModel> get books;
  @override
  @JsonKey(ignore: true)
  _$$RidesBooksModelImplCopyWith<_$RidesBooksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
