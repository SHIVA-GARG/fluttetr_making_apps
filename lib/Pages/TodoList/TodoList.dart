import 'package:flutter/material.dart';
import 'detailScreen.dart';

class TodoList {
  final String title;
  final String description;

  TodoList(this.title, this.description);
}

final todos = List.generate(
  20,
  (index) => TodoList(
      'Todo $index', 'A description of what needs to be done for Todo $index'),
);

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => detailPage(
                          title: todos[index].title,
                          description: todos[index].description)),
                );
              });
        });
  }
}
