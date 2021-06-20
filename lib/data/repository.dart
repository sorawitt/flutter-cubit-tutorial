import 'package:todo_app/data/models/todo.dart';
import 'package:todo_app/data/network_service.dart';

class Repository {

  final NetworkService networkService;
  Repository({this.networkService});

  Future<List<Todo>> fetchTodos() async {
    final todosRaw = await networkService.getTodos();
    return todosRaw.map((e) => Todo.fromJSON(e)).toList();
  }

}