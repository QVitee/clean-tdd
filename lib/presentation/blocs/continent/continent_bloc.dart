import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:cleantdd/domain/domain.dart';

part 'continent_event.dart';
part 'continent_state.dart';

class ContinentBloc extends Bloc<ContinentEvent, ContinentState> {
  final ContinentUC _continentUC;

  ContinentBloc(
    this._continentUC,
  ) : super(ContinentInitState()) {
    on<OnGetContinent>(_onGetContinent);
  }

  FutureOr<void> _onGetContinent(
    OnGetContinent event,
    Emitter<ContinentState> emit,
  ) async {
    final result = await _continentUC.getContinent(code: event.code);

    final newState = result.fold(
      (failure) => ContinentError(failure.toString()),
      (continent) => ContinentData(continent),
    );

    emit(newState);
  }
}
