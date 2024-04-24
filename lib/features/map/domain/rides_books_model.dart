import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/map/domain/books_model.dart';

import 'ride_model.dart';

part 'rides_books_model.freezed.dart';
part 'rides_books_model.g.dart';

@freezed
class RidesBooksModel with _$RidesBooksModel {
  factory RidesBooksModel({
    required List<RideModel> rides,
    required List<BookModel> books,
  }) = _RidesBooksModel;

  factory RidesBooksModel.fromJson(Map<String, dynamic> json) =>
      _$RidesBooksModelFromJson(json);
}
