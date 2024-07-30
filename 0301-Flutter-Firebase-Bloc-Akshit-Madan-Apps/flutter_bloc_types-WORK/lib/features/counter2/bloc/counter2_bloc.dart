import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter2_event.dart';
part 'counter2_state.dart';

class Counter2Bloc extends Bloc<Counter2Event, Counter2State> {
  Counter2Bloc() : super(Counter2Initial()) {
    on<Counter2Incrementevent>(counter2Incrementevent);
  }

  int value = 0;

  FutureOr<void> counter2Incrementevent(
      Counter2Incrementevent event, Emitter<Counter2State> emit) {
    value = value + 1;
    emit(Counter2IncrementState(val: value));
    // emit(Counter2IncrementActionState());
  }

}
