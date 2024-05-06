// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransportState {
  SingleTransportModel? get transport => throw _privateConstructorUsedError;
  BookModel? get book => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  String? get qrCode => throw _privateConstructorUsedError;
  TarifModel? get selectedTarif => throw _privateConstructorUsedError;
  TransportActionEnum get actionState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransportStateCopyWith<TransportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportStateCopyWith<$Res> {
  factory $TransportStateCopyWith(
          TransportState value, $Res Function(TransportState) then) =
      _$TransportStateCopyWithImpl<$Res, TransportState>;
  @useResult
  $Res call(
      {SingleTransportModel? transport,
      BookModel? book,
      bool isLoading,
      Failure? error,
      String? qrCode,
      TarifModel? selectedTarif,
      TransportActionEnum actionState});

  $SingleTransportModelCopyWith<$Res>? get transport;
  $BookModelCopyWith<$Res>? get book;
  $FailureCopyWith<$Res>? get error;
  $TarifModelCopyWith<$Res>? get selectedTarif;
}

/// @nodoc
class _$TransportStateCopyWithImpl<$Res, $Val extends TransportState>
    implements $TransportStateCopyWith<$Res> {
  _$TransportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transport = freezed,
    Object? book = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? qrCode = freezed,
    Object? selectedTarif = freezed,
    Object? actionState = null,
  }) {
    return _then(_value.copyWith(
      transport: freezed == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as SingleTransportModel?,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTarif: freezed == selectedTarif
          ? _value.selectedTarif
          : selectedTarif // ignore: cast_nullable_to_non_nullable
              as TarifModel?,
      actionState: null == actionState
          ? _value.actionState
          : actionState // ignore: cast_nullable_to_non_nullable
              as TransportActionEnum,
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
  $BookModelCopyWith<$Res>? get book {
    if (_value.book == null) {
      return null;
    }

    return $BookModelCopyWith<$Res>(_value.book!, (value) {
      return _then(_value.copyWith(book: value) as $Val);
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
  $TarifModelCopyWith<$Res>? get selectedTarif {
    if (_value.selectedTarif == null) {
      return null;
    }

    return $TarifModelCopyWith<$Res>(_value.selectedTarif!, (value) {
      return _then(_value.copyWith(selectedTarif: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransportStateImplCopyWith<$Res>
    implements $TransportStateCopyWith<$Res> {
  factory _$$TransportStateImplCopyWith(_$TransportStateImpl value,
          $Res Function(_$TransportStateImpl) then) =
      __$$TransportStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SingleTransportModel? transport,
      BookModel? book,
      bool isLoading,
      Failure? error,
      String? qrCode,
      TarifModel? selectedTarif,
      TransportActionEnum actionState});

  @override
  $SingleTransportModelCopyWith<$Res>? get transport;
  @override
  $BookModelCopyWith<$Res>? get book;
  @override
  $FailureCopyWith<$Res>? get error;
  @override
  $TarifModelCopyWith<$Res>? get selectedTarif;
}

/// @nodoc
class __$$TransportStateImplCopyWithImpl<$Res>
    extends _$TransportStateCopyWithImpl<$Res, _$TransportStateImpl>
    implements _$$TransportStateImplCopyWith<$Res> {
  __$$TransportStateImplCopyWithImpl(
      _$TransportStateImpl _value, $Res Function(_$TransportStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transport = freezed,
    Object? book = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? qrCode = freezed,
    Object? selectedTarif = freezed,
    Object? actionState = null,
  }) {
    return _then(_$TransportStateImpl(
      transport: freezed == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as SingleTransportModel?,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTarif: freezed == selectedTarif
          ? _value.selectedTarif
          : selectedTarif // ignore: cast_nullable_to_non_nullable
              as TarifModel?,
      actionState: null == actionState
          ? _value.actionState
          : actionState // ignore: cast_nullable_to_non_nullable
              as TransportActionEnum,
    ));
  }
}

/// @nodoc

class _$TransportStateImpl implements _TransportState {
  _$TransportStateImpl(
      {required this.transport,
      this.book,
      required this.isLoading,
      this.error,
      this.qrCode,
      this.selectedTarif,
      required this.actionState});

  @override
  final SingleTransportModel? transport;
  @override
  final BookModel? book;
  @override
  final bool isLoading;
  @override
  final Failure? error;
  @override
  final String? qrCode;
  @override
  final TarifModel? selectedTarif;
  @override
  final TransportActionEnum actionState;

  @override
  String toString() {
    return 'TransportState(transport: $transport, book: $book, isLoading: $isLoading, error: $error, qrCode: $qrCode, selectedTarif: $selectedTarif, actionState: $actionState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransportStateImpl &&
            (identical(other.transport, transport) ||
                other.transport == transport) &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.selectedTarif, selectedTarif) ||
                other.selectedTarif == selectedTarif) &&
            (identical(other.actionState, actionState) ||
                other.actionState == actionState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transport, book, isLoading,
      error, qrCode, selectedTarif, actionState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransportStateImplCopyWith<_$TransportStateImpl> get copyWith =>
      __$$TransportStateImplCopyWithImpl<_$TransportStateImpl>(
          this, _$identity);
}

abstract class _TransportState implements TransportState {
  factory _TransportState(
      {required final SingleTransportModel? transport,
      final BookModel? book,
      required final bool isLoading,
      final Failure? error,
      final String? qrCode,
      final TarifModel? selectedTarif,
      required final TransportActionEnum actionState}) = _$TransportStateImpl;

  @override
  SingleTransportModel? get transport;
  @override
  BookModel? get book;
  @override
  bool get isLoading;
  @override
  Failure? get error;
  @override
  String? get qrCode;
  @override
  TarifModel? get selectedTarif;
  @override
  TransportActionEnum get actionState;
  @override
  @JsonKey(ignore: true)
  _$$TransportStateImplCopyWith<_$TransportStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
