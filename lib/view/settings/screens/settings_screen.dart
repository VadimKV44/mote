import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Экран настроек приложения.
@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
