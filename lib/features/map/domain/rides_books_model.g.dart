// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rides_books_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RidesBooksModelImpl _$$RidesBooksModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RidesBooksModelImpl(
      rides: (json['rides'] as List<dynamic>)
          .map((e) => RideModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      books: (json['books'] as List<dynamic>)
          .map((e) => BookModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RidesBooksModelImplToJson(
        _$RidesBooksModelImpl instance) =>
    <String, dynamic>{
      'rides': instance.rides,
      'books': instance.books,
    };
