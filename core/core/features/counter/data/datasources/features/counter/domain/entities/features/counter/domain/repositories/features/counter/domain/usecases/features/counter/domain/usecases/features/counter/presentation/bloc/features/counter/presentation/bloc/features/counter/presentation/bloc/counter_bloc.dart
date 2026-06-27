import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_counter.dart';
import '../../domain/usecases/increment_counter.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final GetCounter getCounter;
  final IncrementCounter incrementCounter;

  CounterBloc({required this.getCounter, required this.incrementCounter}) : super(CounterInitial()) {
    on<FetchCounter>((event, emit) async {
      try {
        final result = await getCounter.call();
        emit(CounterLoaded(result.value));
      } catch (_) {
        emit(CounterError());
      }
    });

    on<IncrementCounter>((event, emit) async {
      try {
        await incrementCounter.call();
        final result = await getCounter.call();
        emit(CounterLoaded(result.value));
      } catch (_) {
        emit(CounterError());
      }
    });
  }
}
