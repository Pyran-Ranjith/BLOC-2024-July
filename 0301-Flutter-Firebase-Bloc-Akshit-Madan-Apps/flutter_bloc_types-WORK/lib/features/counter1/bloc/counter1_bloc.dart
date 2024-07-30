import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter1_event.dart';
part 'counter1_state.dart';

class Counter1Bloc extends Bloc<Counter1Event, Counter1State> {
  Counter1Bloc() : super(Counter1Initial()) {
    on<Counter1Incrementevent>(counter1Incrementevent);
  }

  int value = 0;

  FutureOr<void> counter1Incrementevent(
      Counter1Incrementevent event, Emitter<Counter1State> emit) {
    value = value + 1;
    emit(Counter1IncrementState(val: value));
    // emit(CounterIncrementActionState());
  }
}
