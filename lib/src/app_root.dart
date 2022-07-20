
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/bloc/tic_tac_toe_bloc.dart';
import 'package:tic_tac_toe/bloc/tic_tac_toe_event.dart';
import 'package:tic_tac_toe/bloc/tic_tac_toe_state.dart';
import 'package:tic_tac_toe/views/home_view.dart';

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TicTacToe",
      debugShowCheckedModeBanner: false,
        home: BlocProvider<TicTacToeBloc>(
        create: (context) => TicTacToeBloc()..add(ResetEvent()),
    child: HomeView(),
        ),
    );
  }
}
