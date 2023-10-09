import 'package:counter_app_bloc/Screens/bloc/counter_event.dart';
import 'package:counter_app_bloc/Screens/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, StateCounter> {
  CounterBloc() : super(InitialState()) {
    on<CounterIncrement>((event, emit) {
      emit(CounterState(addd: event.add_increment(state.add)));
    });

   on<CountDecrement>((event, emit) {
      emit(CounterState(addd: event.add_decrement(state.add)));
    });

    on<Addition>((event, emit) {
      emit(CounterCalState(call: event.increment(state.cal)));
    });

    on<Subtraction>((event, emit) {
      emit(CounterCalState(call: event.decrement(state.cal)));
    });
  }
}
