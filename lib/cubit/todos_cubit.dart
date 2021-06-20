import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/data/models/todo.dart';
import 'package:todo_app/data/repository.dart';

part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  TodosCubit({this.repository}) : super(TodosInitial());

  final Repository repository;

  void fetchTodos() {
    repository.fetchTodos().then((todos) => {
      emit(TodosLoaded(todos: todos))
    });
  }
}
