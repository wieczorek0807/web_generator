import 'package:flutter/cupertino.dart';

class AppSegmentButtons extends StatelessWidget {
  final bool isGradiennEnabled;
  final bool isLinearGradient;
  final bool isRadialGradient;
  final Function(int) onChanged;

  const AppSegmentButtons(
      {Key? key,
      required this.isGradiennEnabled,
      required this.isLinearGradient,
      required this.isRadialGradient,
      required this.onChanged})
      : super(key: key);

  int _groupValueChoose() {
    if (!isGradiennEnabled) {
      return 0;
    }
    if (isLinearGradient) {
      return 1;
    }
    return 2;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoSegmentedControl(
      children: const {
        0: Padding(
            padding: EdgeInsets.all(2),
            child: Text(
              'GradientOff',
              textAlign: TextAlign.center,
            )),
        1: Text(
          'Linear Gradient',
          textAlign: TextAlign.center,
        ),
        2: Text(
          'Radius Gradient',
          textAlign: TextAlign.center,
        ),
      },
      onValueChanged: onChanged,
      groupValue: _groupValueChoose(),
    );
  }
}
