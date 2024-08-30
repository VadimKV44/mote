import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Экран с задачами.
@RoutePage()
class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 130),
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Note $index'),
          );
        },
      ),
    );
  }
}
