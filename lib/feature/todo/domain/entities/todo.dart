//entities

import 'package:clone_done_it/import.dart';

class Todo extends Equatable {
  final String task;
  final int id;

  Todo({required this.id, required this.task});

  @override
  // TODO: implement props
  List<Object> get props => [task, id];
}