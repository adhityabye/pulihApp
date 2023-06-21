import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulih_app/pages/welcome/bloc/welcome_events.dart';
import 'package:pulih_app/pages/welcome/bloc/welcome_states.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeState()) {
    print("Welcome bloc");
    on<WelcomeEvent>((event, emit) {
      emit(WelcomeState(page: state.page));
    });
  }
}
