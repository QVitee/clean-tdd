part of 'continent_bloc.dart';

abstract class ContinentState extends Equatable {}

class ContinentInitState extends ContinentState {
  @override
  List<Object?> get props => [];
}

class ContinentError extends ContinentState {
  ContinentError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}

class ContinentData extends ContinentState {
  final Continent continent;
  ContinentData(this.continent);

  @override
  List<Object?> get props => [continent];
}
