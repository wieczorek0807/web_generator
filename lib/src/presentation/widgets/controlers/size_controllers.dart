import 'package:box_shadow_generator/src/presentation/bloc/animated_box/animated_box_bloc.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../global/app_value_slider.dart';

// ignore: must_be_immutable
class SizeControllers extends StatelessWidget {
  SizeControllers({Key? key}) : super(key: key);

  static const _width = 320.0;
  static const _valueMin = 0.0;
  var _valueMax = 350.0;

  @override
  Widget build(BuildContext context) {
    final currnetMaxValue = MediaQuery.of(context).size.width - 250;

    if (currnetMaxValue < 350) {
      _valueMax = currnetMaxValue;
    }
    return SizedBox(
      width: _width,
      child: BlocBuilder<AnimatedBoxBloc, AnimatedBoxState>(
        builder: (_, state) => Column(
          children: [
            AppValueSlider(
              title: AppLocalizations.of(context)!.height,
              value: state.boxHeight,
              min: _valueMin,
              max: _valueMax,
              onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateBoxSize(height: v)),
            ),
            const Divider(),
            AppValueSlider(
              title: AppLocalizations.of(context)!.width,
              value: state.boxWidth,
              min: _valueMin,
              max: _valueMax,
              onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateBoxSize(width: v)),
            ),
          ],
        ),
      ),
    );
  }
}
