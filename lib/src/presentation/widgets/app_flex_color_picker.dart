import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppFlexColorPicker extends StatefulWidget {
  final String title;
  final Function(Color) onChanged;
  final Color startColor;

  const AppFlexColorPicker(
      {required this.title,
      required this.onChanged,
      required this.startColor,
      Key? key})
      : super(key: key);

  @override
  State<AppFlexColorPicker> createState() => _AppFlexColorPicker();
}

class _AppFlexColorPicker extends State<AppFlexColorPicker> {
  Color myColor = Colors.pink;

  @override
  void initState() {
    myColor = widget.startColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.title),
        GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              color: widget.startColor,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            height: 40,
            width: 40,
          ),
          onTap: () {
            pickColor(context);
          },
        ),
      ],
    );
  }

  void pickColor(BuildContext context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              ColorPicker(
                wheelDiameter: 300,
                borderRadius: 22,
                heading: Text(
                  'Pick color',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                columnSpacing: 50,
                enableShadesSelection: false,
                enableTonalPalette: false,
                onColorChanged: (Color value) {
                  widget.onChanged(value);
                },
                showColorCode: true,
                colorCodeHasColor: true,
                color: myColor,
                pickersEnabled: const <ColorPickerType, bool>{
                  ColorPickerType.both: false,
                  ColorPickerType.primary: false,
                  ColorPickerType.accent: false,
                  ColorPickerType.bw: false,
                  ColorPickerType.custom: false,
                  ColorPickerType.wheel: true,
                },
              ),
              CupertinoButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Pick"),
              )
            ]),
          ));
}
