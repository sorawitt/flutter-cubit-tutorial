import 'package:flutter/material.dart';
import 'package:todo_app/presentations/screens/todos_screen.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodosScreen(),
    );
  }
}
