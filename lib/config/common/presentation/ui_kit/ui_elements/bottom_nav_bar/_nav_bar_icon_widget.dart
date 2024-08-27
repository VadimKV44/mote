import 'package:flutter/material.dart';

/// Виджет иконки нижней навигации.
class NavBarIconWidget extends StatelessWidget {
  const NavBarIconWidget(
      // this.icon,
      {
    this.active = false,
    required this.onTap,
  });

  // final SvgGenImage icon;

  /// Активна ли иконка нижней навигации.
  final bool active;

  /// Обработчик нажатия на иконку нижней навигации.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    const unselectedColor = Colors.grey;

    // icon.svg(
    //   width: AppSizes.kIconLarge,
    //   height: AppSizes.kIconLarge,
    //   colorFilter: inactive && unselectedColor != null
    //       ? ColorFilter.mode(unselectedColor, BlendMode.srcIn)
    //       : null,
    // ),

    return Expanded(
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Center(
          child: Icon(
            Icons.home,
            color: active ? null : unselectedColor,
          ),
        ),
      ),
    );
  }
}
