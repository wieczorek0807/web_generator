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
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListTile(
        tileColor: focus ? Colors.grey.shade300 : Colors.white,
        textColor: focus ? AppColors.prussianBlue : Colors.black,
        iconColor: focus ? AppColors.prussianBlue : Colors.black,
        leading: leadingIcon,
        title: Text(title,
            style: focus ? TextStyle(fontWeight: FontWeight.bold) : null),
        onTap: () {
          onTap();
          popAfterOnTap ? Navigator.pop(context) : none();
        },
      ),
    );
  }
}
