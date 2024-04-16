// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapNotifierState {
  List<MapObject> get mainObjects => throw _privateConstructorUsedError;
  List<MapObject> get availableObjects => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapNotifierStateCopyWith<MapNotifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapNotifierStateCopyWith<$Res> {
  factory $MapNotifierStateCopyWith(
          MapNotifierState value, $Res Function(MapNotifierState) then) =
      _$MapNotifierStateCopyWithImpl<$Res, MapNotifierState>;
  @useResult
  $Res call({List<MapObject> mainObjects, List<MapObject> availableObjects});
}

/// @nodoc
class _$MapNotifierStateCopyWithImpl<$Res, $Val extends MapNotifierState>
    implements $MapNotifierStateCopyWith<$Res> {
  _$MapNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainObjects = null,
    Object? availableObjects = null,
  }) {
    return _then(_value.copyWith(
      mainObjects: null == mainObjects
          ? _value.mainObjects
          : mainObjects // ignore: cast_nullable_to_non_nullable
              as List<MapObject>,
      availableObjects: null == availableObjects
          ? _value.availableObjects
          : availableObjects // ignore: cast_nullable_to_non_nullable
              as List<MapObject>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapNotifierStateImplCopyWith<$Res>
    implements $MapNotifierStateCopyWith<$Res> {
  factory _$$MapNotifierStateImplCopyWith(_$MapNotifierStateImpl value,
          $Res Function(_$MapNotifierStateImpl) then) =
      __$$MapNotifierStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MapObject> mainObjects, List<MapObject> availableObjects});
}

/// @nodoc
class __$$MapNotifierStateImplCopyWithImpl<$Res>
    extends _$MapNotifierStateCopyWithImpl<$Res, _$MapNotifierStateImpl>
    implements _$$MapNotifierStateImplCopyWith<$Res> {
  __$$MapNotifierStateImplCopyWithImpl(_$MapNotifierStateImpl _value,
      $Res Function(_$MapNotifierStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainObjects = null,
    Object? availableObjects = null,
  }) {
    return _then(_$MapNotifierStateImpl(
      mainObjects: null == mainObjects
          ? _value._mainObjects
          : mainObjects // ignore: cast_nullable_to_non_nullable
              as List<MapObject>,
      availableObjects: null == availableObjects
          ? _value._availableObjects
          : availableObjects // ignore: cast_nullable_to_non_nullable
              as List<MapObject>,
    ));
  }
}

/// @nodoc

class _$MapNotifierStateImpl implements _MapNotifierState {
  _$MapNotifierStateImpl(
      {required final List<MapObject> mainObjects,
      required final List<MapObject> availableObjects})
      : _mainObjects = mainObjects,
        _availableObjects = availableObjects;

  final List<MapObject> _mainObjects;
  @override
  List<MapObject> get mainObjects {
    if (_mainObjects is EqualUnmodifiableListView) return _mainObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mainObjects);
  }

  final List<MapObject> _availableObjects;
  @override
  List<MapObject> get availableObjects {
    if (_availableObjects is EqualUnmodifiableListView)
      return _availableObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableObjects);
  }

  @override
  String toString() {
    return 'MapNotifierState(mainObjects: $mainObjects, availableObjects: $availableObjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapNotifierStateImpl &&
            const DeepCollectionEquality()
                .equals(other._mainObjects, _mainObjects) &&
            const DeepCollectionEquality()
                .equals(other._availableObjects, _availableObjects));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_mainObjects),
      const DeepCollectionEquality().hash(_availableObjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapNotifierStateImplCopyWith<_$MapNotifierStateImpl> get copyWith =>
      __$$MapNotifierStateImplCopyWithImpl<_$MapNotifierStateImpl>(
          this, _$identity);
}

abstract class _MapNotifierState implements MapNotifierState {
  factory _MapNotifierState(
          {required final List<MapObject> mainObjects,
          required final List<MapObject> availableObjects}) =
      _$MapNotifierStateImpl;

  @override
  List<MapObject> get mainObjects;
  @override
  List<MapObject> get availableObjects;
  @override
  @JsonKey(ignore: true)
  _$$MapNotifierStateImplCopyWith<_$MapNotifierStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
