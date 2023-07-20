import 'package:flutter/material.dart';

import 'to_do_list.dart';

void main() {
  runApp(const ToDoListMaterialAppTree());
}

class ToDoListMaterialAppTree extends StatelessWidget {
  const ToDoListMaterialAppTree({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ToDoList(),
      },
    );
  }
}
