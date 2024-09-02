import 'package:flutter/material.dart';
import 'package:mote/config/utils/constants/app_insets.dart';

/// Виджет основного экрана приложения.
class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.controller,
  });

  /// Виджет основного контента экрана.
  final Widget body;

  /// Виджет верхней панели.
  final Widget? appBar;

  /// Контроллер прокрутки [body].
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: controller,
        slivers: [
          if (appBar != null) appBar!,
          SliverPadding(
            padding: AppInsets.kHorizontal16 + AppInsets.kBottom100,
            sliver: body,
          ),
        ],
      ),
    );
  }
}
