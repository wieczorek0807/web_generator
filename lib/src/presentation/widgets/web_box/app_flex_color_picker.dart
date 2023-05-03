import 'package:box_shadow_generator/src/presentation/widgets/global/flex_color_picker.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StandardColorPicker extends StatelessWidget {
  final String title;
  final Function(Color) onChanged;
  final Color startColor;

  const StandardColorPicker(
      {required this.title,
      required this.onChanged,
      required this.startColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        FlexColorPicker(onChanged: onChanged, startColor: startColor)
      ],
    );
  }
}
