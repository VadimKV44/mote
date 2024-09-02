import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/ui_kit/widgets/animated_tap_widget.dart';
import 'package:mote/config/utils/constants/app_sizes.dart';
import 'package:mote/config/utils/gen/assets.gen.dart';

/// Виджет иконки нижней навигации.
class NavBarIconWidget extends StatelessWidget {
  const NavBarIconWidget({
    required this.onTap,
    required this.activeIcon,
    required this.inactiveIcon,
    this.active = false,
  });

  /// Иконка активного элемента нижней навигации.
  final SvgGenImage activeIcon;

  /// Иконка неактивного элемента нижней навигации.
  final SvgGenImage inactiveIcon;

  /// Активна ли иконка нижней навигации.
  final bool active;

  /// Обработчик нажатия на иконку нижней навигации.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedTapWidget(
        onTap: onTap,
        child: active
            ? activeIcon.svg(
                height: AppSizes.kIconActiveSize,
                width: AppSizes.kIconActiveSize,
              )
            : inactiveIcon.svg(
                height: AppSizes.kIconInactiveSize,
                width: AppSizes.kIconInactiveSize,
              ),
      ),
    );
  }
}
