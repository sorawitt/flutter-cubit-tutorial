class Todo {
  String todoMessage;
  bool isCompleted;
  final int id;

  Todo.fromJSON(Map json)
      : todoMessage = json["message"] as String,
        isCompleted = json["is_completed"] as bool,
        id = json["id"] as int;
}
