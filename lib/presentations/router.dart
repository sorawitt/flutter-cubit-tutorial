import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/constants/string.dart';
import 'package:todo_app/cubit/todos_cubit.dart';
import 'package:todo_app/data/repository.dart';
import 'package:todo_app/presentations/screens/add_todo_screen.dart';
import 'package:todo_app/presentations/screens/edit_todo_screen.dart';
import 'package:todo_app/presentations/screens/todos_screen.dart';

class AppRouter {

  Repository repository;

  AppRouter() {
    repository = Repository();
  }

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) => TodosCubit(repository: repository),
                  child: TodosScreen(),
                ));
      case EDIT_TODO_ROUTE:
        return MaterialPageRoute(builder: (_) => EditTodoScreen());
      case ADD_TODO_ROUTE:
        return MaterialPageRoute(builder: (_) => AddTodoScreen());
      default:
        return null;
    }
  }
}
