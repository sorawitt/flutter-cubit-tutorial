import 'package:flutter/material.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      ),
      body: Center(
        child: Text("Todos Screen"),
      ),
    );
  }
}
