part of 'continent_bloc.dart';

abstract class ContinentEvent extends Equatable {
  const ContinentEvent();
}

class OnGetContinent extends ContinentEvent {
  final String? code;
  OnGetContinent({this.code});

  @override
  List<Object?> get props => [code];
}
