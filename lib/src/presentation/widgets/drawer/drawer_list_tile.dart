import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final Function onTap;
  final Icon leadingIcon;
  final bool focus;

  const DrawerListTile(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.leadingIcon,
      required this.focus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      autofocus: focus,
      leading: leadingIcon,
      title: Text(title),
      onTap: () {
        onTap();
        Navigator.pop(context);
      },
    );
  }
}
