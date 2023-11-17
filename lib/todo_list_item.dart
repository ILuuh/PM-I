import 'package:flutter/material.dart';
import 'package:todos/todo.dart';

class TodoListItem extends StatelessWidget {
  final Todo todo;

  const TodoListItem({
    super.key,
    required this.todo,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Text(todo.name), 
          ),
          Text(todo.status),
        ],
      ),
    );
  }
}