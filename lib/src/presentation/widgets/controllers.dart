import 'package:box_shadow_generator/src/core/values/colors.dart';
import 'package:box_shadow_generator/src/presentation/bloc/animated_box/animated_box_bloc.dart';
import 'package:box_shadow_generator/src/presentation/widgets/gradient_box/app_segment_buttons.dart';
import 'package:box_shadow_generator/src/presentation/widgets/gradient_box/color_gradient_picker.dart';
import 'package:box_shadow_generator/src/presentation/widgets/gradient_box/gradient_direction.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import 'web_box/app_flex_color_picker.dart';
import 'global/app_value_slider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                value: state.offsetDx,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateOffsetX(v)),
              ),
              const Divider(),
              AppValueSlider(
                title: '${AppLocalizations.of(context)!.offset} dy',
                value: state.offsetDy,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateOffsetY(v)),
              ),
              const Divider(),
              AppValueSlider(
                title: AppLocalizations.of(context)!.blurRadius,
                min: _blurMin,
                value: state.blurRadius,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateBlur(v)),
              ),
              const Divider(),
              AppValueSlider(
                title: AppLocalizations.of(context)!.spreadRadius,
                value: state.spreadRadius,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateSpread(v)),
              ),
              const Divider(),
              StandardColorPicker(
                title: AppLocalizations.of(context)!.shadowColor,
                startColor: Color(state.shadowColor),
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateShadowColor(v)),
              ),
              const Divider(),
              StandardColorPicker(
                title: AppLocalizations.of(context)!.boxColor,
                startColor: Color(state.animatedBoxColor),
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateAnimatedBoxColor(v)),
              ),
            ],
          ),
        ),
      );
}

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
                value: state.borderRadius.topLeftRadius,
                min: _radiusMin,
                max: _radiusMax,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateTopLeftRadius(v)),
              ),
              const Divider(),
              AppValueSlider(
                title: AppLocalizations.of(context)!.topRight,
                value: state.borderRadius.topRightRadius,
                min: _radiusMin,
                max: _radiusMax,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateTopRightRadius(v)),
              ),
              const Divider(),
              AppValueSlider(
                title: AppLocalizations.of(context)!.bottomLeft,
                value: state.borderRadius.bottomLeftRadius,
                min: _radiusMin,
                max: _radiusMax,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateBottomLeftRadius(v)),
              ),
              const Divider(),
              AppValueSlider(
                title: AppLocalizations.of(context)!.bottomRight,
                value: state.borderRadius.bottomRightRadius,
                min: _radiusMin,
                max: _radiusMax,
                onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateBottomRightRadius(v)),
              ),
            ],
          ),
        ),
      );
}

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
              onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateBoxHeight(v)),
            ),
            const Divider(),
            AppValueSlider(
              title: AppLocalizations.of(context)!.width,
              value: state.boxWidth,
              min: _valueMin,
              max: _valueMax,
              onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateBoxWidth(v)),
            ),
          ],
        ),
      ),
    );
  }
}

class GradientControllers extends StatelessWidget {
  const GradientControllers({Key? key}) : super(key: key);

  static const _width = 320.0;

  @override
  Widget build(BuildContext context) => SizedBox(
      width: GradientControllers._width,
      child: BlocBuilder<AnimatedBoxBloc, AnimatedBoxState>(builder: (_, state) {
        if (!state.isGradientEnabled) {
          return AppSegmentButtons(
            isGradiennEnabled: state.isGradientEnabled,
            isLinearGradient: state.isLinearGradient,
            isRadialGradient: state.isRadialGradient,
            onChanged: (v) => context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.changeGradientState(value: v)),
          );
        }

        return Column(
          children: [
            AppSegmentButtons(
              isGradiennEnabled: state.isGradientEnabled,
              isLinearGradient: state.isLinearGradient,
              isRadialGradient: state.isRadialGradient,
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
                      valueOnChanged: (v) => context
                          .read<AnimatedBoxBloc>()
                          .add(AnimatedBoxEvent.updateGradientValue(id: index, value: v)),
                      colorOnChanged: (Color v) => context
                          .read<AnimatedBoxBloc>()
                          .add(AnimatedBoxEvent.updateGradientColor(id: index, color: v)),
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
                  onPressed: () => context.read<AnimatedBoxBloc>().add(const AnimatedBoxEvent.addGradientColor()),
                  child: Text(AppLocalizations.of(context)!.addColor),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.prussianBlue,
                  ),
                  onPressed: () => context.read<AnimatedBoxBloc>().add(const AnimatedBoxEvent.removeGradientColor()),
                  child: Text(AppLocalizations.of(context)!.removeColor),
                )
              ],
            )
          ],
        );
      }));
}
