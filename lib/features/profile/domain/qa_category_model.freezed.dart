// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qa_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QACategoryModel _$QACategoryModelFromJson(Map<String, dynamic> json) {
  return _QACategoryModel.fromJson(json);
}

/// @nodoc
mixin _$QACategoryModel {
  String get nameRu => throw _privateConstructorUsedError;
  String get nameUz => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<AnswerModel> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QACategoryModelCopyWith<QACategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QACategoryModelCopyWith<$Res> {
  factory $QACategoryModelCopyWith(
          QACategoryModel value, $Res Function(QACategoryModel) then) =
      _$QACategoryModelCopyWithImpl<$Res, QACategoryModel>;
  @useResult
  $Res call(
      {String nameRu,
      String nameUz,
      String nameEn,
      @JsonKey(defaultValue: []) List<AnswerModel> answers});
}

/// @nodoc
class _$QACategoryModelCopyWithImpl<$Res, $Val extends QACategoryModel>
    implements $QACategoryModelCopyWith<$Res> {
  _$QACategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameRu = null,
    Object? nameUz = null,
    Object? nameEn = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
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
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QACategoryModelImplCopyWith<$Res>
    implements $QACategoryModelCopyWith<$Res> {
  factory _$$QACategoryModelImplCopyWith(_$QACategoryModelImpl value,
          $Res Function(_$QACategoryModelImpl) then) =
      __$$QACategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nameRu,
      String nameUz,
      String nameEn,
      @JsonKey(defaultValue: []) List<AnswerModel> answers});
}

/// @nodoc
class __$$QACategoryModelImplCopyWithImpl<$Res>
    extends _$QACategoryModelCopyWithImpl<$Res, _$QACategoryModelImpl>
    implements _$$QACategoryModelImplCopyWith<$Res> {
  __$$QACategoryModelImplCopyWithImpl(
      _$QACategoryModelImpl _value, $Res Function(_$QACategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameRu = null,
    Object? nameUz = null,
    Object? nameEn = null,
    Object? answers = null,
  }) {
    return _then(_$QACategoryModelImpl(
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
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QACategoryModelImpl implements _QACategoryModel {
  _$QACategoryModelImpl(
      {required this.nameRu,
      required this.nameUz,
      required this.nameEn,
      @JsonKey(defaultValue: []) required final List<AnswerModel> answers})
      : _answers = answers;

  factory _$QACategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QACategoryModelImplFromJson(json);

  @override
  final String nameRu;
  @override
  final String nameUz;
  @override
  final String nameEn;
  final List<AnswerModel> _answers;
  @override
  @JsonKey(defaultValue: [])
  List<AnswerModel> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'QACategoryModel(nameRu: $nameRu, nameUz: $nameUz, nameEn: $nameEn, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QACategoryModelImpl &&
            (identical(other.nameRu, nameRu) || other.nameRu == nameRu) &&
            (identical(other.nameUz, nameUz) || other.nameUz == nameUz) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nameRu, nameUz, nameEn,
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QACategoryModelImplCopyWith<_$QACategoryModelImpl> get copyWith =>
      __$$QACategoryModelImplCopyWithImpl<_$QACategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QACategoryModelImplToJson(
      this,
    );
  }
}

abstract class _QACategoryModel implements QACategoryModel {
  factory _QACategoryModel(
      {required final String nameRu,
      required final String nameUz,
      required final String nameEn,
      @JsonKey(defaultValue: [])
      required final List<AnswerModel> answers}) = _$QACategoryModelImpl;

  factory _QACategoryModel.fromJson(Map<String, dynamic> json) =
      _$QACategoryModelImpl.fromJson;

  @override
  String get nameRu;
  @override
  String get nameUz;
  @override
  String get nameEn;
  @override
  @JsonKey(defaultValue: [])
  List<AnswerModel> get answers;
  @override
  @JsonKey(ignore: true)
  _$$QACategoryModelImplCopyWith<_$QACategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
