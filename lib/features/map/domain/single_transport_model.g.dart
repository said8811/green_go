// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_transport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleTransportModelImpl _$$SingleTransportModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleTransportModelImpl(
      id: json['id'] as int,
      image: json['image'] as String? ?? '',
      nameRu: json['nameRu'] as String? ?? '',
      nameUz: json['nameUz'] as String? ?? '',
      nameEn: json['nameEn'] as String? ?? '',
      number: json['number'] as String,
      qrCode: json['qrCode'] as String,
      tariffs: (json['tariffs'] as List<dynamic>)
          .map((e) => TarifModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      distance: (json['distance'] as num?)?.toDouble() ?? 0.0,
      book: json['book'] == null
          ? null
          : BookModel.fromJson(json['book'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SingleTransportModelImplToJson(
        _$SingleTransportModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'nameRu': instance.nameRu,
      'nameUz': instance.nameUz,
      'nameEn': instance.nameEn,
      'number': instance.number,
      'qrCode': instance.qrCode,
      'tariffs': instance.tariffs,
      'distance': instance.distance,
      'book': instance.book,
    };
