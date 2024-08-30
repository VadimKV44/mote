import 'package:flutter/material.dart';

/// Виджет обёртка, добавляющий небольшую анимацию при нажатии на него.
class AnimatedTapWidget extends StatefulWidget {
  const AnimatedTapWidget({
    required this.onTap,
    required this.child,
  });

  /// Обработчик нажатия на обёртку.
  final VoidCallback onTap;

  /// Дочерний виджет.
  final Widget child;

  @override
  _AnimatedTapWidgetState createState() => _AnimatedTapWidgetState();
}

class _AnimatedTapWidgetState extends State<AnimatedTapWidget>
    with SingleTickerProviderStateMixin {
  /// Контроллер анимации.
  late AnimationController _controller;

  /// Анимация изменения масштаба.
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.8).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutBack,
        reverseCurve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Обработчик нажатия на обёртку.
  void _handleTap() {
    /// Анимация нажатия.
    _controller.forward().then((_) => _controller.reverse());
    widget.onTap();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: widget.child,
          );
        },
      ),
    );
  }
}
