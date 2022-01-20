import 'package:equatable/equatable.dart';
import 'country.dart';

class Continent extends Equatable {
  final String? code;
  final String? name;
  final List<Country>? countries;

  Continent({this.code, this.name, this.countries});

  @override
  List<Object?> get props => [code, name, countries];
}
