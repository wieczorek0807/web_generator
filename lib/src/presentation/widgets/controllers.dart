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

class ShadowControllers extends StatelessWidget {
  const ShadowControllers({Key? key}) : super(key: key);

  static const _width = 300.0;
  static const _blurMin = 0.0;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: _width,
        child: BlocBuilder<AnimatedBoxBloc, AnimatedBoxState>(
          builder: (_, state) => Column(
            children: [
              AppValueSlider(
                title: 'Offset dx',
                value: state.offsetDx,
                onChanged: (v) => context
                    .read<AnimatedBoxBloc>()
                    .add(AnimatedBoxEvent.updateOffsetX(v)),
              ),
              const Divider(),
              AppValueSlider(
                title: 'Offset dy',
                value: state.offsetDy,
                onChanged: (v) => context
                    .read<AnimatedBoxBloc>()
                    .add(AnimatedBoxEvent.updateOffsetY(v)),
              ),
              const Divider(),
              AppValueSlider(
                title: 'Blur radius',
                min: _blurMin,
                value: state.blurRadius,
                onChanged: (v) => context
                    .read<AnimatedBoxBloc>()
                    .add(AnimatedBoxEvent.updateBlur(v)),
              ),
              const Divider(),
              AppValueSlider(
                title: 'Spread radius',
                value: state.spreadRadius,
                onChanged: (v) => context
                    .read<AnimatedBoxBloc>()
                    .add(AnimatedBoxEvent.updateSpread(v)),
              ),
              const Divider(),
              StandardColorPicker(
                title: 'Shadow color:',
                startColor: Color(state.shadowColor),
                onChanged: (v) => context
                    .read<AnimatedBoxBloc>()
                    .add(AnimatedBoxEvent.updateShadowColor(v)),
              ),
              const Divider(),
              StandardColorPicker(
                title: 'Box color:',
                startColor: Color(state.animatedBoxColor),
                onChanged: (v) => context
                    .read<AnimatedBoxBloc>()
                    .add(AnimatedBoxEvent.updateAnimatedBoxColor(v)),
              ),
            ],
          ),
        ),
      );
}

class RadiusControllers extends StatelessWidget {
  const RadiusControllers({Key? key}) : super(key: key);

  static const _width = 300.0;
  static const _radiusMin = 0.0;
  static const _radiusMax = 250.0;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: _width,
        child: BlocBuilder<AnimatedBoxBloc, AnimatedBoxState>(
          builder: (_, state) => Column(
            children: [
              AppValueSlider(
                title: 'Top left',
                value: state.topLeftRadius,
                min: _radiusMin,
                max: _radiusMax,
                onChanged: (v) => context
                    .read<AnimatedBoxBloc>()
                    .add(AnimatedBoxEvent.updateTopLeftRadius(v)),
              ),
              const Divider(),
              AppValueSlider(
                title: 'Top right',
                value: state.topRightRadius,
                min: _radiusMin,
                max: _radiusMax,
                onChanged: (v) => context
                    .read<AnimatedBoxBloc>()
                    .add(AnimatedBoxEvent.updateTopRightRadius(v)),
              ),
              const Divider(),
              AppValueSlider(
                title: 'Bottom left',
                value: state.bottomLeftRadius,
                min: _radiusMin,
                max: _radiusMax,
                onChanged: (v) => context
                    .read<AnimatedBoxBloc>()
                    .add(AnimatedBoxEvent.updateBottomLeftRadius(v)),
              ),
              const Divider(),
              AppValueSlider(
                title: 'Bottom right',
                value: state.bottomRightRadius,
                min: _radiusMin,
                max: _radiusMax,
                onChanged: (v) => context
                    .read<AnimatedBoxBloc>()
                    .add(AnimatedBoxEvent.updateBottomRightRadius(v)),
              ),
            ],
          ),
        ),
      );
}

class SizeControllers extends StatelessWidget {
  SizeControllers({Key? key}) : super(key: key);

  static const _width = 300.0;
  static const _valueMin = 0.0;
  var _valueMax = 350.0;

  @override
  Widget build(BuildContext context) {
    final currnetMaxValue = MediaQuery.of(context).size.width - 250;

    if (currnetMaxValue < 350) {
      _valueMax = currnetMaxValue;
      print(currnetMaxValue);
    }
    return SizedBox(
      width: _width,
      child: BlocBuilder<AnimatedBoxBloc, AnimatedBoxState>(
        builder: (_, state) => Column(
          children: [
            AppValueSlider(
              title: 'Height',
              value: state.boxHeight,
              min: _valueMin,
              max: _valueMax,
              onChanged: (v) => context
                  .read<AnimatedBoxBloc>()
                  .add(AnimatedBoxEvent.updateBoxHeight(v)),
            ),
            const Divider(),
            AppValueSlider(
              title: 'Width',
              value: state.boxWidth,
              min: _valueMin,
              max: _valueMax,
              onChanged: (v) => context
                  .read<AnimatedBoxBloc>()
                  .add(AnimatedBoxEvent.updateBoxWidth(v)),
            ),
          ],
        ),
      ),
    );
  }
}

class GradientControllers extends StatelessWidget {
  const GradientControllers({Key? key}) : super(key: key);

  static const _width = 300.0;

  @override
  Widget build(BuildContext context) => SizedBox(
      width: GradientControllers._width,
      child: BlocBuilder<AnimatedBoxBloc, AnimatedBoxState>(
        builder: (_, state) {
          if (state.isGradientEnabled) {
            return Column(
              children: [
                AppSegmentButtons(
                  isGradiennEnabled: state.isGradientEnabled,
                  isLinearGradient: state.isLinearGradient,
                  isRadialGradient: state.isRadialGradient,
                  onChanged: (v) => context
                      .read<AnimatedBoxBloc>()
                      .add(AnimatedBoxEvent.changeGradientState(value: v)),
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
                              .add(AnimatedBoxEvent.updateGradientValue(
                                  id: index, value: v)),
                          colorOnChanged: (Color v) => context
                              .read<AnimatedBoxBloc>()
                              .add(AnimatedBoxEvent.updateGradientColor(
                                  id: index, color: v)),
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
                      onPressed: () => context
                          .read<AnimatedBoxBloc>()
                          .add(const AnimatedBoxEvent.addGradientColor()),
                      child: const Text('Add color'),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.prussianBlue,
                      ),
                      onPressed: () => context
                          .read<AnimatedBoxBloc>()
                          .add(const AnimatedBoxEvent.removeGradientColor()),
                      child: const Text('Remove color'),
                    )
                  ],
                )
              ],
            );
          }
          return AppSegmentButtons(
            isGradiennEnabled: state.isGradientEnabled,
            isLinearGradient: state.isLinearGradient,
            isRadialGradient: state.isRadialGradient,
            onChanged: (v) => context
                .read<AnimatedBoxBloc>()
                .add(AnimatedBoxEvent.changeGradientState(value: v)),
          );
        },
      ));
}
