import 'package:clone_done_it/import.dart';
import 'add_todo_test.mocks.dart';
import 'package:flutter_test/flutter_test.dart';

@GenerateMocks([TodoRepository])
void main() {
  late MockTodoRepository mockTodoRepository;
  late AddTodo addTodo;

  setUp(() {
    mockTodoRepository = MockTodoRepository();
    addTodo = AddTodo(mockTodoRepository);
  });

  final String tTask = "task";
  final Todo tTodo = Todo(task: tTask, id: 1);

  test("should add todo to the repository", () async {
    //arrange
    when(mockTodoRepository.addTodo(any))
        .thenAnswer((realInvocation) async => Right(tTodo));
    //act
    final result = await addTodo(Params(task: tTask)); //should use param if the data is in local
    //assert
    expect(result, equals(Right(tTodo)));
  });
}
