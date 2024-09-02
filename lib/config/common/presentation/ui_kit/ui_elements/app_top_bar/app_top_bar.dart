import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_elements/app_top_bar/_app_bar_animation_text_field_widget.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_elements/app_top_bar/_app_bar_title_widget.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_kit.dart';
import 'package:mote/config/common/presentation/ui_kit/widgets/animated_tap_widget.dart';
import 'package:mote/config/common/presentation/ui_kit/widgets/bg_blur_widget.dart';
import 'package:mote/config/utils/constants/app_constants.dart';
import 'package:mote/config/utils/constants/app_insets.dart';
import 'package:mote/config/utils/constants/app_sizes.dart';
import 'package:mote/config/utils/gen/assets.gen.dart';

/// Виджет верхней навигационной панели.
class AppTopBar extends StatefulWidget {
  const AppTopBar({
    super.key,
    required this.title,
    this.onTapTitle,
    this.leftIconButton,
    this.onTapLeft,
    this.rightIconButton,
    this.onTapRight,
  });

  /// Иконка для левой кнопки.
  final SvgGenImage? leftIconButton;

  /// Нажатие на виджет левой кнопки.
  final VoidCallback? onTapLeft;

  /// Нажатие на виджет правой кнопки.
  final VoidCallback? onTapRight;

  /// Иконка для правой кнопки.
  final SvgGenImage? rightIconButton;

  /// Название.
  final String title;

  /// Нажатие на виджет названия.
  final VoidCallback? onTapTitle;

  @override
  State<AppTopBar> createState() => _AppTopBarState();
}

class _AppTopBarState extends State<AppTopBar>
    with SingleTickerProviderStateMixin {
  bool _isTextFieldVisible = false;
  late AnimationController _controller;

  VoidCallback get _onTapLeft => widget.onTapLeft ?? () {};

  VoidCallback get _onTapRight => widget.onTapRight ?? () {};

  VoidCallback get _onTapTitle => widget.onTapTitle ?? () {};

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: AppConstants.kDuration300,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleTextField() {
    _onTapRight();
    setState(() {
      _isTextFieldVisible = !_isTextFieldVisible;
      if (_isTextFieldVisible) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = UIKit.colors(context);

    return SliverAppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      pinned: true,
      flexibleSpace: BGBlurWidget(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: colors.mainColors.bgBottomBar
                .withOpacity(AppConstants.kOpacity05),
            border: BorderDirectional(
              bottom: BorderSide(color: colors.mainColors.blue),
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: AppInsets.kHorizontal16 + AppInsets.kVertical11,
              child: Row(
                children: [
                  if (widget.leftIconButton != null)
                    AnimatedTapWidget(
                      onTap: _onTapLeft,
                      child: widget.leftIconButton!.svg(
                        height: AppSizes.kIconMedium,
                        width: AppSizes.kIconMedium,
                      ),
                    ),
                  AppBarTitleWidget(
                    title: widget.title,
                    onTapTitle: _onTapTitle,
                    isTextFieldVisible: _isTextFieldVisible,
                  ),
                  if (widget.rightIconButton != null)
                    AppBarAnimationTextField(
                      isTextFieldVisible: _isTextFieldVisible,
                      onTap: _toggleTextField,
                      icon: widget.rightIconButton!,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
