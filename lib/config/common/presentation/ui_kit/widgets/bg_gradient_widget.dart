import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_kit.dart';

/// Виджет для создания градиента на фоне виджета.
class BGGradientWidget extends StatelessWidget {
  const BGGradientWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = UIKit.colors(context);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: const [0, 0.75],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: colors.gradientColors.bgGradient,
        ),
      ),
      child: child,
    );
  }
}
