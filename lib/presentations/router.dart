import 'package:flutter/material.dart';
import 'package:todo_app/presentations/screens/add_todo_screen.dart';
import 'package:todo_app/presentations/screens/edit_todo_screen.dart';
import 'package:todo_app/presentations/screens/todos_screen.dart';

class Router {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => TodosScreen());
      case "/edit_todo":
        return MaterialPageRoute(builder: (_) => EditTodoScreen());
      case "/add_todo":
        return MaterialPageRoute(builder: (_) => AddTodoScreen());
      default:
        return null;
    }
  }
}
