import '../../domain/repositories/counter_repository.dart';
import '../../../../core/usecase.dart';
import '../entities/counter_entity.dart';

class GetCounter implements UseCase<CounterEntity, void> {
  final CounterRepository repository;

  GetCounter(this.repository);

  @override
  Future<CounterEntity> call({void params}) async {
    return await repository.getCounter();
  }
}
