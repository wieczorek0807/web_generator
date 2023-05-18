import 'package:box_shadow_generator/src/presentation/bloc/animated_box/animated_box_bloc.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/gradient_direction/gradient_direction_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'gradient_dropdown_button.dart';

class GradientDirection extends StatelessWidget {
  const GradientDirection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimatedBoxBloc, AnimatedBoxState>(
      builder: (context, state) {
        if (!state.isLinearGradient) {
          return GradientDropdownButton(
            name: AppLocalizations.of(context)!.center,
            dropDownButtonValue: state.centerRadiusGradient,
            dropDownButtonItems: allGradientDirecitons,
            onChange: (v) => context.read<AnimatedBoxBloc>().add(
                  AnimatedBoxEvent.updateGradientCenterValue(centerRadiusGradient: v),
                ),
          );
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GradientDropdownButton(
              name: AppLocalizations.of(context)!.directionStart,
              dropDownButtonValue: state.beginLinearGradient,
              dropDownButtonItems: allGradientDirecitons,
              onChange: (v) => context.read<AnimatedBoxBloc>().add(
                    AnimatedBoxEvent.updateLinearGradientValue(beginLinearGradient: v),
                  ),
            ),
            GradientDropdownButton(
              name: AppLocalizations.of(context)!.directionEnd,
              dropDownButtonValue: state.endLinearGradient,
              dropDownButtonItems: allGradientDirecitons,
              onChange: (v) => context.read<AnimatedBoxBloc>().add(
                    AnimatedBoxEvent.updateLinearGradientValue(endLinearGradient: v),
                  ),
            ),
          ],
        );
      },
    );
  }
}
