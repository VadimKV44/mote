import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_kit.dart';
import 'package:mote/config/common/presentation/ui_kit/widgets/animated_tap_widget.dart';
import 'package:mote/config/utils/constants/app_borders.dart';
import 'package:mote/config/utils/constants/app_constants.dart';
import 'package:mote/config/utils/constants/app_sizes.dart';
import 'package:mote/config/utils/extensions/build_context_ext.dart';
import 'package:mote/config/utils/extensions/text_style_ext.dart';
import 'package:mote/config/utils/gen/assets.gen.dart';

class AppBarAnimationTextField extends StatelessWidget {
  const AppBarAnimationTextField({
    super.key,
    required this.isTextFieldVisible,
    required this.onTap,
    required this.icon,
  });

  /// Видимость текстового поля.
  final bool isTextFieldVisible;

  /// Нажатие на виджет.
  final VoidCallback onTap;

  /// Иконка.
  final SvgGenImage icon;

  /// Горизонтальные отступы верхней навигационной панели + отступ от левой иконки.
  double get _appBarHPadding => 32 + 16;

  ValueKey get _iconCloseKey => const ValueKey('close');
  ValueKey get _iconRightKey => const ValueKey('rightIcon');

  @override
  Widget build(BuildContext context) {
    final colors = UIKit.colors(context);
    final textStyles = UIKit.textStyles(context);
    final textFieldWidth = isTextFieldVisible
        ? context.screenWidth - AppSizes.kIconMedium - _appBarHPadding
        : 0.0;

    return Stack(
      alignment: Alignment.centerRight,
      children: [
        AnimatedContainer(
          duration: AppConstants.kDuration300,
          width: textFieldWidth,
          // padding: const EdgeInsets.symmetric(horizontal: 10),
          // decoration: BoxDecoration(
          //   color: isTextFieldVisible ? Colors.white : Colors.transparent,
          //   borderRadius: AppBorders.kCircular8,
          // ),
          child: isTextFieldVisible
              ? TextField(
                  // textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintText: 'Введите текст',
                    hintStyle: textStyles.headingTypo.h1.withColor(
                      colors.textColors.blue,
                    ),
                    // border: InputBorder.none,
                    filled: true,
                    fillColor:
                        isTextFieldVisible ? Colors.white : Colors.transparent,
                    border: OutlineInputBorder(
                      borderRadius: AppBorders.kCircular8,
                      borderSide: BorderSide(
                        color: colors.mainColors.blue,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: AppBorders.kCircular8,
                      borderSide: BorderSide(
                        color: colors.mainColors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: AppBorders.kCircular8,
                      borderSide: BorderSide(
                        color: colors.mainColors.blue,
                      ),
                    ),
                    // contentPadding: EdgeInsets.zero,
                  ),
                )
              : null,
        ),
        AnimatedContainer(
          duration: AppConstants.kDuration300,
          curve: Curves.easeInOut,
          child: AnimatedTapWidget(
            onTap: onTap,
            child: AnimatedSwitcher(
              transitionBuilder: (child, animation) => FadeTransition(
                opacity: animation,
                child: ScaleTransition(
                  scale: animation,
                  child: child,
                ),
              ),
              duration: AppConstants.kDuration300,
              child: isTextFieldVisible
                  ? UIKit.icons.close.svg(
                      key: _iconCloseKey,
                      height: AppSizes.kIconMedium,
                      width: AppSizes.kIconMedium,
                    )
                  : icon.svg(
                      key: _iconRightKey,
                      height: AppSizes.kIconMedium,
                      width: AppSizes.kIconMedium,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
