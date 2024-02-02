import 'package:box_shadow_generator/src/presentation/bloc/animated_box/animated_box_bloc.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../global/app_value_slider.dart';
import '../web_box/standard_color_picker.dart';

class ShadowControllers extends StatelessWidget {
  const ShadowControllers({Key? key}) : super(key: key);

  static const _width = 320.0;
  static const _blurMin = 0.0;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: _width,
        child: BlocBuilder<AnimatedBoxBloc, AnimatedBoxState>(
          builder: (_, state) => Column(
            children: [
              AppValueSlider(
                title: '${AppLocalizations.of(context)!.offset} dx',
                value: state.animatedBox.offsetDx,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateOffset(x: v)),
              ),
              const Divider(),
              AppValueSlider(
                title: '${AppLocalizations.of(context)!.offset} dy',
                value: state.animatedBox.offsetDy,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateOffset(y: v)),
              ),
              const Divider(),
              AppValueSlider(
                title: AppLocalizations.of(context)!.blurRadius,
                min: _blurMin,
                value: state.animatedBox.blurRadius,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateBlur(v)),
              ),
              const Divider(),
              AppValueSlider(
                title: AppLocalizations.of(context)!.spreadRadius,
                value: state.animatedBox.spreadRadius,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateSpread(v)),
              ),
              const Divider(),
              StandardColorPicker(
                title: AppLocalizations.of(context)!.shadowColor,
                startColor: Color(state.animatedBox.shadowColor),
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateColor(shadowColor: v)),
              ),
              const Divider(),
              StandardColorPicker(
                title: AppLocalizations.of(context)!.boxColor,
                startColor: Color(state.animatedBox.animatedBoxColor),
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateColor(animatedBoxColor: v)),
              ),
            ],
          ),
        ),
      );
}
