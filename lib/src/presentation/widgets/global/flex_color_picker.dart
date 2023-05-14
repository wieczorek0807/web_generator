import 'package:box_shadow_generator/src/core/values/colors.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                wheelSquarePadding: 10,
                wheelDiameter: 300,
                borderRadius: 22,
                heading: Text(
                  AppLocalizations.of(context)!.pickColor,
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
                color: AppColors.darkCyan,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(AppLocalizations.of(context)!.select),
              )
            ]),
          ));
}
