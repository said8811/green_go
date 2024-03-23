// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReferenceModelImpl _$$ReferenceModelImplFromJson(Map<String, dynamic> json) =>
    _$ReferenceModelImpl(
      availableCoordinates: (json['availableCoordinates'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map(
                      (e) => CordinateModel.fromJson(e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      prohibitedCoordinates: (json['prohibitedCoordinates'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map(
                      (e) => CordinateModel.fromJson(e as Map<String, dynamic>))
                  .toList())
              .toList() ??
          [],
      regionId: json['regionId'] as int? ?? 0,
      regionName: json['regionName'] as String? ?? '',
      stations: (json['stations'] as List<dynamic>?)
              ?.map((e) => StationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$ReferenceModelImplToJson(
        _$ReferenceModelImpl instance) =>
    <String, dynamic>{
      'availableCoordinates': instance.availableCoordinates,
      'categories': instance.categories,
      'prohibitedCoordinates': instance.prohibitedCoordinates,
      'regionId': instance.regionId,
      'regionName': instance.regionName,
      'stations': instance.stations,
    };
