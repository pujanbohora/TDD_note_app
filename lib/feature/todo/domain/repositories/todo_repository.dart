import 'package:clone_done_it/core/error/failures.dart';
import 'package:clone_done_it/feature/todo/domain/entities/todo.dart';
import 'package:dartz/dartz.dart';

abstract class TodoRepository {
  Future<Either<Failure, Todo>> addTodo(String task); //Todo from entities
}