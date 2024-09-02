import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_kit.dart';
import 'package:mote/config/utils/constants/app_constants.dart';

/// Экран с заметками.
@RoutePage()
class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  final ScrollController _controller = ScrollController();

  void _scrollToTop() {
    _controller.animateTo(
      0,
      duration: AppConstants.kDuration500,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return UIKit.appScaffold(
      controller: _controller,
      appBar: UIKit.appTopBar(
        title: 'Все заметки',
        onTapTitle: _scrollToTop,
        leftIconButton: UIKit.icons.menu,
        // onTapRight: () {},
        rightIconButton: UIKit.icons.search,
        // onTapLeft: () {},
      ),
      body: SliverList.builder(
        itemBuilder: (context, index) {
          return Text('Note $index');
        },
      ),
    );
  }
}
