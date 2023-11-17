import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/todo_list_item.dart';
import 'package:todos/todo_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<TodoViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.builder(
        itemCount: vm.todos.length,
        itemBuilder: (context, index) => TodoListItem(todo: vm.todos[index]),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, "/new-todo"),
      ),
    );
  }
}