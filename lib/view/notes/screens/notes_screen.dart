import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mote/config/common/presentation/ui_kit/ui_kit.dart';
import 'package:mote/config/common/presentation/ui_kit/widgets/bg_blur_widget.dart';

/// Экран с заметками.
@RoutePage()
class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ui = UIKit(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   surfaceTintColor: Colors.transparent,
          //   backgroundColor: ui.colors.mainColors.bgBottomBar.withOpacity(0.5),
          //   pinned: true,
          // ),
          SliverAppBar(
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            pinned: true,
            // expandedHeight: 200.0,
            // // floating: false,
            // flexibleSpace: FlexibleSpaceBar(
            //   background: Stack(
            //     fit: StackFit.expand,
            //     children: [
            //       // Image.asset(
            //       //   'assets/background_image.jpg',
            //       //   fit: BoxFit.cover,
            //       // ),
            //       BackdropFilter(
            //         filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            //         child: Container(
            //           color: Colors.black.withOpacity(0.2),
            //         ),
            //       ),
            //     ],
            //   ),
            //   title: Text('Blurred AppBar'),
            // ),
            title: Container(
              decoration: BoxDecoration(
                color: ui.colors.mainColors.bgBottomBar.withOpacity(0.5),
                border: BorderDirectional(
                  bottom: BorderSide(color: ui.colors.mainColors.blue),
                ),
              ),
              child: Text('Blurred AppBar'),
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Note $index'),
              );
            },
          ),
        ],
      ),
    );
  }
}
