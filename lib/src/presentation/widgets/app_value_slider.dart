import 'package:box_shadow_generator/src/core/values/dimens.dart';
import 'package:flutter/cupertino.dart';

class AppValueSlider extends StatelessWidget {
  const AppValueSlider({
    required this.title,
    required this.value,
    required this.onChanged,
    this.min = _min,
    this.max = _max,
    Key? key,
  }) : super(key: key);

  final double min;
  final double max;

  final String title;
  final double value;
  final Function(double) onChanged;

  static const _min = -50.0;
  static const _max = 50.0;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('$title | ${value.floor()}'),
          const SizedBox(height: AppDimens.d4),
          CupertinoSlider(
            value: value,
            min: min,
            max: max,
            onChanged: onChanged,
          ),
        ],
      );
}
