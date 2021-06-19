import 'package:flutter/material.dart';
import 'package:todo_app/constants/string.dart';
import 'package:todo_app/presentations/screens/add_todo_screen.dart';
import 'package:todo_app/presentations/screens/edit_todo_screen.dart';
import 'package:todo_app/presentations/screens/todos_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => TodosScreen());
      case EDIT_TODO_ROUTE:
        return MaterialPageRoute(builder: (_) => EditTodoScreen());
      case ADD_TODO_ROUTE:
        return MaterialPageRoute(builder: (_) => AddTodoScreen());
      default:
        return null;
    }
  }
}
