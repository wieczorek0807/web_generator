import 'package:box_shadow_generator/src/presentation/bloc/animated_box/animated_box_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/gradient_direction/gradient_direction_entity.dart';

import 'gradient_dropdown_button.dart';

class GradientDirection extends StatelessWidget {
  const GradientDirection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimatedBoxBloc, AnimatedBoxState>(
      builder: (context, state) {
        if (state.isLinearGradient) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientDropdownButton(
                  name: 'Directon start',
                  dropDownButtonValue: state.beginLinearGradient,
                  dropDownButtonItems: allGradientDirecitons,
                  onChange: (v) => context.read<AnimatedBoxBloc>().add(
                      AnimatedBoxEvent.changeGradientBeginValue(
                          beginLinearGradient: v))),
              GradientDropdownButton(
                  name: 'Directon end',
                  dropDownButtonValue: state.endLinearGradient,
                  dropDownButtonItems: allGradientDirecitons,
                  onChange: (v) => context.read<AnimatedBoxBloc>().add(
                      AnimatedBoxEvent.changeGradientEndValue(
                          endLinearGradient: v))),
            ],
          );
        }

        return GradientDropdownButton(
            name: 'Center ',
            dropDownButtonValue: state.centerRadiusGradient,
            dropDownButtonItems: allGradientDirecitons,
            onChange: (v) => context.read<AnimatedBoxBloc>().add(
                AnimatedBoxEvent.changeGradientCenterValue(
                    centerRadiusGradient: v)));
      },
    );
  }
}
