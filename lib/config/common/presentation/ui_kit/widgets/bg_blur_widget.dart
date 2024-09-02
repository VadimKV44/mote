import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mote/config/utils/constants/app_constants.dart';

/// Виджет для создания эффекта размытия внутри виджета.
class BGBlurWidget extends StatelessWidget {
  const BGBlurWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: AppConstants.kBlur,
          sigmaY: AppConstants.kBlur,
        ),
        child: child,
      ),
    );
  }
}
