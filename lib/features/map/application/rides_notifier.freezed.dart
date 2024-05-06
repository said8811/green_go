// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rides_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RidesState {
  List<RideModel> get rides => throw _privateConstructorUsedError;
  List<BookModel> get books => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  SingleTransportModel? get transport => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  String? get imgPath => throw _privateConstructorUsedError;
  TarifModel? get tarif => throw _privateConstructorUsedError;
  RideAction get actionState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RidesStateCopyWith<RidesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidesStateCopyWith<$Res> {
  factory $RidesStateCopyWith(
          RidesState value, $Res Function(RidesState) then) =
      _$RidesStateCopyWithImpl<$Res, RidesState>;
  @useResult
  $Res call(
      {List<RideModel> rides,
      List<BookModel> books,
      bool isLoading,
      SingleTransportModel? transport,
      Failure? error,
      String? imgPath,
      TarifModel? tarif,
      RideAction actionState});

  $SingleTransportModelCopyWith<$Res>? get transport;
  $FailureCopyWith<$Res>? get error;
  $TarifModelCopyWith<$Res>? get tarif;
}

/// @nodoc
class _$RidesStateCopyWithImpl<$Res, $Val extends RidesState>
    implements $RidesStateCopyWith<$Res> {
  _$RidesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rides = null,
    Object? books = null,
    Object? isLoading = null,
    Object? transport = freezed,
    Object? error = freezed,
    Object? imgPath = freezed,
    Object? tarif = freezed,
    Object? actionState = null,
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
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transport: freezed == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as SingleTransportModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      imgPath: freezed == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String?,
      tarif: freezed == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as TarifModel?,
      actionState: null == actionState
          ? _value.actionState
          : actionState // ignore: cast_nullable_to_non_nullable
              as RideAction,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SingleTransportModelCopyWith<$Res>? get transport {
    if (_value.transport == null) {
      return null;
    }

    return $SingleTransportModelCopyWith<$Res>(_value.transport!, (value) {
      return _then(_value.copyWith(transport: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TarifModelCopyWith<$Res>? get tarif {
    if (_value.tarif == null) {
      return null;
    }

    return $TarifModelCopyWith<$Res>(_value.tarif!, (value) {
      return _then(_value.copyWith(tarif: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RidesStateImplCopyWith<$Res>
    implements $RidesStateCopyWith<$Res> {
  factory _$$RidesStateImplCopyWith(
          _$RidesStateImpl value, $Res Function(_$RidesStateImpl) then) =
      __$$RidesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RideModel> rides,
      List<BookModel> books,
      bool isLoading,
      SingleTransportModel? transport,
      Failure? error,
      String? imgPath,
      TarifModel? tarif,
      RideAction actionState});

  @override
  $SingleTransportModelCopyWith<$Res>? get transport;
  @override
  $FailureCopyWith<$Res>? get error;
  @override
  $TarifModelCopyWith<$Res>? get tarif;
}

/// @nodoc
class __$$RidesStateImplCopyWithImpl<$Res>
    extends _$RidesStateCopyWithImpl<$Res, _$RidesStateImpl>
    implements _$$RidesStateImplCopyWith<$Res> {
  __$$RidesStateImplCopyWithImpl(
      _$RidesStateImpl _value, $Res Function(_$RidesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rides = null,
    Object? books = null,
    Object? isLoading = null,
    Object? transport = freezed,
    Object? error = freezed,
    Object? imgPath = freezed,
    Object? tarif = freezed,
    Object? actionState = null,
  }) {
    return _then(_$RidesStateImpl(
      rides: null == rides
          ? _value._rides
          : rides // ignore: cast_nullable_to_non_nullable
              as List<RideModel>,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transport: freezed == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as SingleTransportModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      imgPath: freezed == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String?,
      tarif: freezed == tarif
          ? _value.tarif
          : tarif // ignore: cast_nullable_to_non_nullable
              as TarifModel?,
      actionState: null == actionState
          ? _value.actionState
          : actionState // ignore: cast_nullable_to_non_nullable
              as RideAction,
    ));
  }
}

/// @nodoc

class _$RidesStateImpl implements _RidesState {
  _$RidesStateImpl(
      {required final List<RideModel> rides,
      required final List<BookModel> books,
      required this.isLoading,
      this.transport,
      this.error,
      this.imgPath,
      this.tarif,
      required this.actionState})
      : _rides = rides,
        _books = books;

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
  final bool isLoading;
  @override
  final SingleTransportModel? transport;
  @override
  final Failure? error;
  @override
  final String? imgPath;
  @override
  final TarifModel? tarif;
  @override
  final RideAction actionState;

  @override
  String toString() {
    return 'RidesState(rides: $rides, books: $books, isLoading: $isLoading, transport: $transport, error: $error, imgPath: $imgPath, tarif: $tarif, actionState: $actionState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RidesStateImpl &&
            const DeepCollectionEquality().equals(other._rides, _rides) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.transport, transport) ||
                other.transport == transport) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath) &&
            (identical(other.tarif, tarif) || other.tarif == tarif) &&
            (identical(other.actionState, actionState) ||
                other.actionState == actionState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_rides),
      const DeepCollectionEquality().hash(_books),
      isLoading,
      transport,
      error,
      imgPath,
      tarif,
      actionState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RidesStateImplCopyWith<_$RidesStateImpl> get copyWith =>
      __$$RidesStateImplCopyWithImpl<_$RidesStateImpl>(this, _$identity);
}

abstract class _RidesState implements RidesState {
  factory _RidesState(
      {required final List<RideModel> rides,
      required final List<BookModel> books,
      required final bool isLoading,
      final SingleTransportModel? transport,
      final Failure? error,
      final String? imgPath,
      final TarifModel? tarif,
      required final RideAction actionState}) = _$RidesStateImpl;

  @override
  List<RideModel> get rides;
  @override
  List<BookModel> get books;
  @override
  bool get isLoading;
  @override
  SingleTransportModel? get transport;
  @override
  Failure? get error;
  @override
  String? get imgPath;
  @override
  TarifModel? get tarif;
  @override
  RideAction get actionState;
  @override
  @JsonKey(ignore: true)
  _$$RidesStateImplCopyWith<_$RidesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
