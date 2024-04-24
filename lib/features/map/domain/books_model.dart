import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/core/domain/lat_long_model.dart';

part 'books_model.freezed.dart';
part 'books_model.g.dart';

@freezed
class BookModel with _$BookModel {
  factory BookModel({
    required int bicycleId,
    required String finishAt,
    required String qrCode,
    required LatLongModel coordinate,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
}
