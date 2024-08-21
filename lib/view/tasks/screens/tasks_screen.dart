import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Экран с задачами.
@RoutePage()
class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
      ),
      body: const Center(
        child: Text('Tasks'),
      ),
    );
  }
}
