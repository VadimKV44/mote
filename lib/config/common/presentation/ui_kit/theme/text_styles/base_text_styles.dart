import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/ui_kit/theme/text_styles/heading_text_styles.dart';

/// Класс [BaseTextStyles] - контракт для реализации всех стилей текста в приложении.
abstract class BaseTextStyles extends ThemeExtension<BaseTextStyles> {
  const BaseTextStyles({
    required this.headingTypo,
    // required this.textTypo,
    // required this.captionTypo,
    // required this.descriptionTypo,
    // required this.buttonTypo,
  });

  final HeadingTextStyles headingTypo;

  // final TextTypography textTypo;

  // final CaptionTypography captionTypo;

  // final DescriptionTypography descriptionTypo;

  // final ButtonTypography buttonTypo;
}
