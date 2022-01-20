import 'package:equatable/equatable.dart';

class Country extends Equatable {
  final String? code;
  final String? name;
  final String? native;
  final String? phone;

  Country({this.code, this.name, this.native, this.phone});

  @override
  List<Object?> get props => [code, name, native, phone];
}
