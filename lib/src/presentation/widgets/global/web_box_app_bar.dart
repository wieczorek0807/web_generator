// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import '../../../core/values/colors.dart';
import '../../bloc/animated_box/animated_box_bloc.dart';
import 'package:provider/provider.dart';

class WebBoxAppBar extends StatefulWidget implements PreferredSizeWidget {
  const WebBoxAppBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<WebBoxAppBar> createState() => _WebBoxAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _WebBoxAppBarState extends State<WebBoxAppBar> {
  @override
  Widget build(BuildContext context) {
    final currnetWidth = MediaQuery.of(context).size.width;
    return AppBar(
      title:
          currnetWidth < 1200 ? Text(widget.title) : Text('Web Box generator'),
      backgroundColor: AppColors.prussianBlue,
      actions: [
        IconButton(
            onPressed: () => context
                .read<AnimatedBoxBloc>()
                .add(const AnimatedBoxEvent.undoChanges()),
            icon: const Icon(Icons.undo)),
      ],
    );
  }
}
