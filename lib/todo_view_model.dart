import 'package:flutter/foundation.dart';
import 'package:todos/todo.dart';

class TodoViewModel extends ChangeNotifier {

  final todos = <Todo>[];

  void addNewTodo(String name, DateTime dueDate) {
    todos.add(Todo(
      name: name,
      dueDate: dueDate,
    ));

    notifyListeners();
  }

  void moveTodo(int index) {
    todos[index] = todos[index].moveToNext();
    notifyListeners();
  }

}