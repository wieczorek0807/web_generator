import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class AppColorPicker extends StatefulWidget {

  final String title;
  final Function(Color) onChanged;
  final Color startColor;

  const AppColorPicker({
    required this.title,
    required this.onChanged,
    required this.startColor,
    Key? key
  }) : super(key: key);

  @override
  State<AppColorPicker> createState() => _AppColorPickerState();
}

class _AppColorPickerState extends State<AppColorPicker> {
  Color myColor = Colors.grey.shade200;

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
            color: myColor,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          height: 40,
          width: 40,
        ),
        onTap: (){
          pickColor(context);
        },
      ),
    ],
    );
  }

  Widget buildColorPicker() => ColorPicker(
      labelTypes: const [ColorLabelType.rgb],
      enableAlpha: false,
      pickerColor: myColor,
      onColorChanged: (color)=> setState(() {
        myColor = color;
        widget.onChanged(myColor);
      }));

  void pickColor(BuildContext context) => showDialog(
      context: context,
      builder: (context)=> AlertDialog(
          title: const Text('Pick color'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildColorPicker(),
              CupertinoButton(
                onPressed: ()=>Navigator.of(context).pop(),
                child: const Text("Pick"),
              )
            ],
          )
      ));
}



