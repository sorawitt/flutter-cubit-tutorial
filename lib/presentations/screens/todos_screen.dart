import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/constants/string.dart';
import 'package:todo_app/cubit/todos_cubit.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    BlocProvider.of<TodosCubit>(context).fetchTodos();

    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
        actions: [
          InkWell(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.add),
            ),
            onTap: () => {Navigator.pushNamed(context, ADD_TODO_ROUTE)},
          )
        ],
      ),
      body: Center(
        child: Text("Todos Screen"),
      ),
    );
  }
}
