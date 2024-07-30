part of 'counter2_bloc.dart';

@immutable
sealed class Counter2State {}

final class Counter2Initial extends Counter2State {}

class Counter2IncrementState extends Counter2State {
  final int val;

  Counter2IncrementState({required this.val});
}
