import 'package:box_shadow_generator/src/core/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    if (!isGradiennEnabled) return 0;
    if (isLinearGradient) return 1;
    return 2;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoSegmentedControl(
      borderColor: AppColors.prussianBlue,
      selectedColor: AppColors.midnightGreen,
      children: {
        0: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              AppLocalizations.of(context)!.gradientOff,
              textAlign: TextAlign.center,
            )),
        1: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              AppLocalizations.of(context)!.linearGradient,
              textAlign: TextAlign.center,
            )),
        2: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              AppLocalizations.of(context)!.radiusGradient,
              textAlign: TextAlign.center,
            )),
      },
      onValueChanged: onChanged,
      groupValue: _groupValueChoose(),
    );
  }
}
