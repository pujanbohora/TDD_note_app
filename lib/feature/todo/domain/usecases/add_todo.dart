//usecases

import 'package:clone_done_it/import.dart';

class AddTodo implements UseCase<void, Params> {
  final TodoRepository todoRepository;

  AddTodo(this.todoRepository);

  @override
  Future<Either<Failure, void>> call(Params params) async{
    // TODO: implement call
    return await todoRepository.addTodo(params.task);
  }
}

class Params extends Equatable {
  final String task;

  Params({required this.task});

  @override
  // TODO: implement props
  List<Object> get props => [task];
}
