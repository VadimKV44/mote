import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_kit.dart';
import 'package:mote/config/common/presentation/ui_kit/widgets/animated_tap_widget.dart';
import 'package:mote/config/utils/constants/app_constants.dart';
import 'package:mote/config/utils/extensions/text_style_ext.dart';

/// Виджет заголовка верхней навигационной панели.
class AppBarTitleWidget extends StatelessWidget {
  const AppBarTitleWidget({
    required this.title,
    required this.onTapTitle,
    required this.isTextFieldVisible,
  });

  /// Заголовок.
  final String title;

  /// Нажатие на заголовок.
  final VoidCallback onTapTitle;

  /// Видно ли поле поиска.
  final bool isTextFieldVisible;

  @override
  Widget build(BuildContext context) {
    final textStyles = UIKit.textStyles(context);
    final colors = UIKit.colors(context);

    return Expanded(
      child: AnimatedOpacity(
        duration: AppConstants.kDuration200,
        opacity: isTextFieldVisible
            ? AppConstants.kOpacity0
            : AppConstants.kOpacity1,
        child: Center(
          child: AnimatedTapWidget(
            onTap: onTapTitle,
            child: Text(
              title,
              style: textStyles.headingTypo.h1.withColor(
                colors.textColors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
