import 'package:box_shadow_generator/src/presentation/bloc/animated_box/animated_box_bloc.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../global/app_value_slider.dart';

class RadiusControllers extends StatelessWidget {
  const RadiusControllers({Key? key}) : super(key: key);

  static const _width = 320.0;
  static const _radiusMin = 0.0;
  static const _radiusMax = 250.0;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: _width,
        child: BlocBuilder<AnimatedBoxBloc, AnimatedBoxState>(
          builder: (_, state) => Column(
            children: [
              AppValueSlider(
                title: AppLocalizations.of(context)!.topLeft,
                value: state.animatedBox.topLeftRadius,
                min: _radiusMin,
                max: _radiusMax,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateRadius(topLeft: v)),
              ),
              const Divider(),
              AppValueSlider(
                title: AppLocalizations.of(context)!.topRight,
                value: state.animatedBox.topRightRadius,
                min: _radiusMin,
                max: _radiusMax,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateRadius(topRight: v)),
              ),
              const Divider(),
              AppValueSlider(
                title: AppLocalizations.of(context)!.bottomLeft,
                value: state.animatedBox.bottomLeftRadius,
                min: _radiusMin,
                max: _radiusMax,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateRadius(bottomLeft: v)),
              ),
              const Divider(),
              AppValueSlider(
                title: AppLocalizations.of(context)!.bottomRight,
                value: state.animatedBox.bottomRightRadius,
                min: _radiusMin,
                max: _radiusMax,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateRadius(bottomRight: v)),
              ),
            ],
          ),
        ),
      );
}
