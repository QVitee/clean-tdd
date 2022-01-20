import 'package:json_annotation/json_annotation.dart';

import 'package:cleantdd/data/models/country_model.dart';
import 'package:cleantdd/domain/domain.dart';

part 'continent_model.g.dart';

@JsonSerializable()
class ContinentModel {
  final String? code;
  final String? name;
  final List<CountryModel>? countries;

  ContinentModel({this.code, this.name, this.countries});

  Continent get entity =>
      Continent(code: code, name: name, countries: countries);

  factory ContinentModel.fromJson(Map<String, dynamic> json) =>
      _$ContinentModelFromJson(json);
  Map<String, dynamic> toJson() => _$ContinentModelToJson(this);
}
