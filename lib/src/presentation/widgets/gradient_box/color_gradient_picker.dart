import 'package:box_shadow_generator/src/presentation/widgets/global/flex_color_picker.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/values/dimens.dart';

class ColorAndValueForGradientPicker extends StatelessWidget {
  final int index;
  final double value;
  final Function(Color) colorOnChanged;
  final Function(double) valueOnChanged;
  final Color startColor;
  const ColorAndValueForGradientPicker(
      {Key? key,
      required this.colorOnChanged,
      required this.startColor,
      required this.index,
      required this.value,
      required this.valueOnChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Color ${index + 1} :'),
            Row(
              children: [
                FlexColorPicker(
                  onChanged: colorOnChanged,
                  startColor: startColor,
                ),
                const SizedBox(
                  width: AppDimens.d4,
                ),
                Text(value.toStringAsFixed(3))
              ],
            )
          ],
        ),
        const SizedBox(height: AppDimens.d4),
        CupertinoSlider(
          min: 0,
          max: 1,
          value: value,
          onChanged: valueOnChanged,
        ),
        // Text('slider')
      ],
    );
  }
}
