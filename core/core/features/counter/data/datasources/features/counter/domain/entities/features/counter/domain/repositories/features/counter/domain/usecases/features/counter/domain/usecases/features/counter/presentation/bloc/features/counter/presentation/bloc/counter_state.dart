abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterLoaded extends CounterState {
  final int value;

  CounterLoaded(this.value);
}

class CounterError extends CounterState {}
