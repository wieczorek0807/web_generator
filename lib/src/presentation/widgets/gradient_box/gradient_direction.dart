import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/gradient_direction_entity.dart';
import '../../bloc/gradient_box/gradient_box_bloc.dart';
import 'gradient_dropdown_button.dart';

class GradientDirection extends StatelessWidget {
  const GradientDirection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GradientBoxBloc, GradientBoxState>(
      builder: (context, state) {
        if (state.isLinearGradient) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientDropdownButton(
                  name: 'Begin',
                  dropDownButtonValue: state.beginLinearGradient,
                  dropDownButtonItems: allGradientDirecitons,
                  onChange: (v) => context.read<GradientBoxBloc>().add(
                      GradientBoxEvent.changeBeginValue(
                          beginLinearGradient: v))),
              GradientDropdownButton(
                  name: 'End',
                  dropDownButtonValue: state.endLinearGradient,
                  dropDownButtonItems: allGradientDirecitons,
                  onChange: (v) => context.read<GradientBoxBloc>().add(
                      GradientBoxEvent.changeEndValue(endLinearGradient: v))),
            ],
          );
        }

        return GradientDropdownButton(
            name: 'Center ',
            dropDownButtonValue: state.centerRadiusGradient,
            dropDownButtonItems: allGradientDirecitons,
            onChange: (v) => context.read<GradientBoxBloc>().add(
                GradientBoxEvent.changeCenterValue(centerRadiusGradient: v)));
      },
    );
  }
}
