import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tic_tac_toe/models/tic_tac_toe.dart';
import 'package:tic_tac_toe/bloc/tic_tac_toe_event.dart';
import 'package:tic_tac_toe/bloc/tic_tac_toe_state.dart';
class TicTacToeBloc extends Bloc<TicTacToeEvent, TicTacToeState> {
  TicTacToeFunctions function = new TicTacToeFunctions();
  var str = List.filled(9, "", growable: false);
  TicTacToeBloc()
      : super(TicTacToeState(str: List.filled(9, "", growable: false))) {
    on<ResetEvent>((event, emit) {
      var dispose = function.dispose();
      str = dispose[0];
      emit(TicTacToeState(str: dispose[0], result: dispose[1]));
    });
    on<ClickEvent>((event, emit) {
      var click = function.click(event.index, str);
      emit(TicTacToeState(str: click[0], result: click[1]));
    });
  }
}
