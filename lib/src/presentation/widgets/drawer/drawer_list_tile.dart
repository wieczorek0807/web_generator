import 'package:box_shadow_generator/src/core/values/colors.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.leadingIcon,
      required this.focus,
      this.popAfterOnTap = true})
      : super(key: key);

  final String title;
  final Function onTap;
  final Icon leadingIcon;
  final bool focus;
  final bool popAfterOnTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: focus ? AppColors.tangerine : Colors.white,
      textColor: focus ? Colors.white : Colors.black,
      iconColor: focus ? Colors.white : Colors.black,
      leading: leadingIcon,
      title: Text(title),
      onTap: () {
        onTap();
        popAfterOnTap ? Navigator.pop(context) : none();
      },
    );
  }
}
