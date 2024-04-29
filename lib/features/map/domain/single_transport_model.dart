// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:green_go/features/map/domain/books_model.dart';
import 'package:green_go/features/map/domain/tarif_model.dart';

part 'single_transport_model.freezed.dart';
part 'single_transport_model.g.dart';

@freezed
class SingleTransportModel with _$SingleTransportModel {
  factory SingleTransportModel({
    required int id,
    @JsonKey(defaultValue: "") required String nameRu,
    @JsonKey(defaultValue: "") required String nameUz,
    @JsonKey(defaultValue: "") required String nameEn,
    required String number,
    required String qrCode,
    required List<TarifModel> tariffs,
    @JsonKey(defaultValue: 0.0) required double distance,
    required BookModel? book,
  }) = _SingleTransportModel;

  factory SingleTransportModel.fromJson(Map<String, dynamic> json) =>
      _$SingleTransportModelFromJson(json);
}
