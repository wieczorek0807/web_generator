import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexColorPicker extends StatefulWidget {
  final Function(Color) onChanged;
  final Color startColor;
  const FlexColorPicker(
      {Key? key, required this.onChanged, required this.startColor})
      : super(key: key);

  @override
  State<FlexColorPicker> createState() => _FlexColorPickerState();
}

class _FlexColorPickerState extends State<FlexColorPicker> {
  late Color myColor;

  @override
  void initState() {
    myColor = widget.startColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
