import 'package:cleantdd/domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country_model.g.dart';

@JsonSerializable()
class CountryModel extends Country {
  CountryModel({
    String? code,
    String? name,
    String? native,
    String? phone,
  }) : super(code: code, name: name, native: native, phone: phone);

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CountryModelToJson(this);
}
