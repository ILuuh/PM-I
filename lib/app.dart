import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/home_page.dart';
import 'package:todos/new_todo_page.dart';
import 'package:todos/todo_view_model.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TodoViewModel>(create: (_) => TodoViewModel()),
      ],
      child: MaterialApp(
        title: "Todo List",
        theme:  ThemeData(
          primarySwatch: Colors.orange,
        ),
        initialRoute: "/",
        routes: {
          "/":(context) => const HomePage(),
          "/new-todo":(context) => const NewTodoPage(),
        },
      ),
    );
  }
}