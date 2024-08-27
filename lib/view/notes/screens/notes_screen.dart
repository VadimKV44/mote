import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Экран с заметками.
@RoutePage()
class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: ListView.builder(
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
