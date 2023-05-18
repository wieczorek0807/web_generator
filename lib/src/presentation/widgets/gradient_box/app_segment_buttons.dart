import 'package:box_shadow_generator/src/core/values/colors.dart';
import 'package:box_shadow_generator/src/data/models/gradient%20_state/gradient_state_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppSegmentButtons extends StatelessWidget {
  final GradientStateModel gradientStateModel;
  final Function(int) onChanged;

  const AppSegmentButtons({Key? key, required this.gradientStateModel, required this.onChanged}) : super(key: key);

  int _groupValueChoose() {
    if (!gradientStateModel.isGradientEnabled) return 0;
    if (gradientStateModel.isLinearGradient) return 1;
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
