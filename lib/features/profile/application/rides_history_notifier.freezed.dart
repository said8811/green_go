// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rides_history_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RidesHistoryState {
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  List<RideModel> get rides => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  DateTime? get from => throw _privateConstructorUsedError;
  DateTime? get to => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RidesHistoryStateCopyWith<RidesHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidesHistoryStateCopyWith<$Res> {
  factory $RidesHistoryStateCopyWith(
          RidesHistoryState value, $Res Function(RidesHistoryState) then) =
      _$RidesHistoryStateCopyWithImpl<$Res, RidesHistoryState>;
  @useResult
  $Res call(
      {int page,
      int pageSize,
      List<RideModel> rides,
      bool isLoading,
      DateTime? from,
      DateTime? to,
      Failure? error});

  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$RidesHistoryStateCopyWithImpl<$Res, $Val extends RidesHistoryState>
    implements $RidesHistoryStateCopyWith<$Res> {
  _$RidesHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? rides = null,
    Object? isLoading = null,
    Object? from = freezed,
    Object? to = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      rides: null == rides
          ? _value.rides
          : rides // ignore: cast_nullable_to_non_nullable
              as List<RideModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$RidesHistoryStateImplCopyWith<$Res>
    implements $RidesHistoryStateCopyWith<$Res> {
  factory _$$RidesHistoryStateImplCopyWith(_$RidesHistoryStateImpl value,
          $Res Function(_$RidesHistoryStateImpl) then) =
      __$$RidesHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int pageSize,
      List<RideModel> rides,
      bool isLoading,
      DateTime? from,
      DateTime? to,
      Failure? error});

  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$RidesHistoryStateImplCopyWithImpl<$Res>
    extends _$RidesHistoryStateCopyWithImpl<$Res, _$RidesHistoryStateImpl>
    implements _$$RidesHistoryStateImplCopyWith<$Res> {
  __$$RidesHistoryStateImplCopyWithImpl(_$RidesHistoryStateImpl _value,
      $Res Function(_$RidesHistoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? rides = null,
    Object? isLoading = null,
    Object? from = freezed,
    Object? to = freezed,
    Object? error = freezed,
  }) {
    return _then(_$RidesHistoryStateImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      rides: null == rides
          ? _value._rides
          : rides // ignore: cast_nullable_to_non_nullable
              as List<RideModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$RidesHistoryStateImpl implements _RidesHistoryState {
  _$RidesHistoryStateImpl(
      {required this.page,
      required this.pageSize,
      required final List<RideModel> rides,
      required this.isLoading,
      this.from,
      this.to,
      this.error})
      : _rides = rides;

  @override
  final int page;
  @override
  final int pageSize;
  final List<RideModel> _rides;
  @override
  List<RideModel> get rides {
    if (_rides is EqualUnmodifiableListView) return _rides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rides);
  }

  @override
  final bool isLoading;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'RidesHistoryState(page: $page, pageSize: $pageSize, rides: $rides, isLoading: $isLoading, from: $from, to: $to, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RidesHistoryStateImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            const DeepCollectionEquality().equals(other._rides, _rides) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, pageSize,
      const DeepCollectionEquality().hash(_rides), isLoading, from, to, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RidesHistoryStateImplCopyWith<_$RidesHistoryStateImpl> get copyWith =>
      __$$RidesHistoryStateImplCopyWithImpl<_$RidesHistoryStateImpl>(
          this, _$identity);
}

abstract class _RidesHistoryState implements RidesHistoryState {
  factory _RidesHistoryState(
      {required final int page,
      required final int pageSize,
      required final List<RideModel> rides,
      required final bool isLoading,
      final DateTime? from,
      final DateTime? to,
      final Failure? error}) = _$RidesHistoryStateImpl;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  List<RideModel> get rides;
  @override
  bool get isLoading;
  @override
  DateTime? get from;
  @override
  DateTime? get to;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$RidesHistoryStateImplCopyWith<_$RidesHistoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
