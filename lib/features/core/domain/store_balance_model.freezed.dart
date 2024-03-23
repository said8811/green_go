// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_balance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreBalanceModel _$StoreBalanceModelFromJson(Map<String, dynamic> json) {
  return _StoreBalanceModel.fromJson(json);
}

/// @nodoc
mixin _$StoreBalanceModel {
  String get id => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreBalanceModelCopyWith<StoreBalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreBalanceModelCopyWith<$Res> {
  factory $StoreBalanceModelCopyWith(
          StoreBalanceModel value, $Res Function(StoreBalanceModel) then) =
      _$StoreBalanceModelCopyWithImpl<$Res, StoreBalanceModel>;
  @useResult
  $Res call({String id, double balance});
}

/// @nodoc
class _$StoreBalanceModelCopyWithImpl<$Res, $Val extends StoreBalanceModel>
    implements $StoreBalanceModelCopyWith<$Res> {
  _$StoreBalanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreBalanceModelImplCopyWith<$Res>
    implements $StoreBalanceModelCopyWith<$Res> {
  factory _$$StoreBalanceModelImplCopyWith(_$StoreBalanceModelImpl value,
          $Res Function(_$StoreBalanceModelImpl) then) =
      __$$StoreBalanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double balance});
}

/// @nodoc
class __$$StoreBalanceModelImplCopyWithImpl<$Res>
    extends _$StoreBalanceModelCopyWithImpl<$Res, _$StoreBalanceModelImpl>
    implements _$$StoreBalanceModelImplCopyWith<$Res> {
  __$$StoreBalanceModelImplCopyWithImpl(_$StoreBalanceModelImpl _value,
      $Res Function(_$StoreBalanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? balance = null,
  }) {
    return _then(_$StoreBalanceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreBalanceModelImpl extends _StoreBalanceModel {
  const _$StoreBalanceModelImpl({required this.id, required this.balance})
      : super._();

  factory _$StoreBalanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreBalanceModelImplFromJson(json);

  @override
  final String id;
  @override
  final double balance;

  @override
  String toString() {
    return 'StoreBalanceModel(id: $id, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreBalanceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreBalanceModelImplCopyWith<_$StoreBalanceModelImpl> get copyWith =>
      __$$StoreBalanceModelImplCopyWithImpl<_$StoreBalanceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreBalanceModelImplToJson(
      this,
    );
  }
}

abstract class _StoreBalanceModel extends StoreBalanceModel {
  const factory _StoreBalanceModel(
      {required final String id,
      required final double balance}) = _$StoreBalanceModelImpl;
  const _StoreBalanceModel._() : super._();

  factory _StoreBalanceModel.fromJson(Map<String, dynamic> json) =
      _$StoreBalanceModelImpl.fromJson;

  @override
  String get id;
  @override
  double get balance;
  @override
  @JsonKey(ignore: true)
  _$$StoreBalanceModelImplCopyWith<_$StoreBalanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
