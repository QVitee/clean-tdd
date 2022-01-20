// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'continent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContinentModel _$ContinentModelFromJson(Map<String, dynamic> json) =>
    ContinentModel(
      code: json['code'] as String?,
      name: json['name'] as String?,
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContinentModelToJson(ContinentModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'countries': instance.countries,
    };
