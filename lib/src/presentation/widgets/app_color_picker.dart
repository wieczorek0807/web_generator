import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class AppColorPicker extends StatefulWidget {
  const AppColorPicker({
    required this.title,
    // required this.value,
    // required this.onChanged,
    // this.startColor = _startColor,
    Key? key
  }) : super(key: key);

  final String title;
  // final double value;
  // final Function(double) onChanged;
  // final double startColor;
  // static const _startColor = -50.0;

  @override
  State<AppColorPicker> createState() => _AppColorPickerState();
}

class _AppColorPickerState extends State<AppColorPicker> {
  Color myColor = Colors.red;

  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);

  void changeColor(Color color) {
    setState(() => pickerColor = color);
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
            shape: BoxShape.rectangle,
            color: myColor,
          ),
          height: 40,
          width: 40,
        ),
        onTap: ()=>pickColor(context),
      )
    ],
    );
  }

  Widget buildColorPicker() => ColorPicker(
      labelTypes: const [ColorLabelType.rgb],
      enableAlpha: false,
      pickerColor: myColor,
      onColorChanged: (color)=> setState(() {
        myColor = color;
      }));

  void pickColor(BuildContext context) => showDialog(
      context: context,
      builder: (context)=> AlertDialog(
          title: Text('Pick color'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildColorPicker(),
              TextButton(
                onPressed: ()=>Navigator.of(context).pop(),
                child: Text("Pick color"),
              )
            ],
          )
      ));
}



