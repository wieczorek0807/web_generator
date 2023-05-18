import 'package:box_shadow_generator/src/core/values/colors.dart';
import 'package:box_shadow_generator/src/presentation/bloc/animated_box/animated_box_bloc.dart';
import 'package:box_shadow_generator/src/presentation/widgets/gradient_box/app_segment_buttons.dart';
import 'package:box_shadow_generator/src/presentation/widgets/gradient_box/color_gradient_picker.dart';
import 'package:box_shadow_generator/src/presentation/widgets/gradient_box/gradient_direction.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GradientControllers extends StatelessWidget {
  const GradientControllers({Key? key}) : super(key: key);

  static const _width = 320.0;

  @override
  Widget build(BuildContext context) => SizedBox(
      width: GradientControllers._width,
      child: BlocBuilder<AnimatedBoxBloc, AnimatedBoxState>(builder: (_, state) {
        if (!state.gradientState.isGradientEnabled) {
          return AppSegmentButtons(
            gradientStateModel: state.gradientState,
            onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.changeGradientState(value: v)),
          );
        }

        return Column(
          children: [
            AppSegmentButtons(
              gradientStateModel: state.gradientState,
              onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.changeGradientState(value: v)),
            ),
            const SizedBox(
              height: 24,
            ),
            const GradientDirection(),
            const SizedBox(
              height: 12,
            ),
            const Divider(),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: state.gradientColors.length,
                  itemBuilder: (context, index) {
                    return ColorAndValueForGradientPicker(
                      valueOnChanged: (v) =>
                          context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateGradientValueColor(id: index, value: v)),
                      colorOnChanged: (Color v) =>
                          context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateGradientValueColor(id: index, color: v)),
                      startColor: Color(state.gradientColors[index].color),
                      index: index,
                      value: state.gradientColors[index].value,
                    );
                  }),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.prussianBlue,
                  ),
                  onPressed: () => context.read<AnimatedBoxBloc>().add(const AnimatedBoxEvent.addOrRemoveGradientColor(add: true)),
                  child: Text(AppLocalizations.of(context)!.addColor),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.prussianBlue,
                  ),
                  onPressed: () => context.read<AnimatedBoxBloc>().add(const AnimatedBoxEvent.addOrRemoveGradientColor(remove: true)),
                  child: Text(AppLocalizations.of(context)!.removeColor),
                )
              ],
            )
          ],
        );
      }));
}
