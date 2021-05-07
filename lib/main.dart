import 'package:flutter/material.dart';
import 'package:todo_app/presentations/router.dart';
import 'package:todo_app/presentations/screens/todos_screen.dart';

void main() {
  runApp(TodoApp(
    router: AppRouter(),
  ));
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key key, this.router}) : super(key: key);

  final AppRouter router;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodosScreen(),
    );
  }
}
