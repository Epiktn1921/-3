import '../../domain/repositories/counter_repository.dart';
import '../../../../core/usecase.dart';

class IncrementCounter implements UseCase<void, void> {
  final CounterRepository repository;

  IncrementCounter(this.repository);

  @override
  Future<void> call({void params}) async {
    await repository.incrementCounter();
  }
}
