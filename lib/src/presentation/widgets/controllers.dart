import 'package:box_shadow_generator/src/presentation/bloc/gradient_box/gradient_box_bloc.dart';
import 'package:box_shadow_generator/src/presentation/widgets/gradient_box/app_segment_buttons.dart';
import 'package:box_shadow_generator/src/presentation/widgets/gradient_box/color_gradient_picker.dart';
import 'package:box_shadow_generator/src/presentation/widgets/gradient_box/gradient_direction.dart';
import 'package:box_shadow_generator/src/presentation/widgets/gradient_box/gradient_dropdown_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/gradient_direction_entity.dart';
import '../bloc/web_box/web_box_bloc.dart';
import 'web_box/app_flex_color_picker.dart';
import 'global/app_value_slider.dart';

class ShadowControllers extends StatelessWidget {
  const ShadowControllers({Key? key}) : super(key: key);

  static const _height = 500.0;
  static const _width = 300.0;
  static const _blurMin = 0.0;

  @override
  Widget build(BuildContext context) => Container(
        height: _height,
        width: _width,
        color: Colors.white,
        child: BlocBuilder<WebBoxBloc, WebBoxState>(
          builder: (_, state) => state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            updateWebBox: (state) => Column(
              children: [
                IconButton(
                    onPressed: () {
                      context
                          .read<WebBoxBloc>()
                          .add(const WebBoxEvent.undoAnimatedBox());
                    },
                    icon: const Icon(Icons.undo)),
                const Divider(),
                AppValueSlider(
                  title: 'offset dx',
                  value: state.offset.dx,
                  onChanged: (v) => context
                      .read<WebBoxBloc>()
                      .add(WebBoxEvent.updateOffsetX(v)),
                ),
                const Divider(),
                AppValueSlider(
                  title: 'offset dy',
                  value: state.offset.dy,
                  onChanged: (v) => context
                      .read<WebBoxBloc>()
                      .add(WebBoxEvent.updateOffsetY(v)),
                ),
                const Divider(),
                AppValueSlider(
                  title: 'blur radius',
                  min: _blurMin,
                  value: state.blurRadius,
                  onChanged: (v) =>
                      context.read<WebBoxBloc>().add(WebBoxEvent.updateBlur(v)),
                ),
                const Divider(),
                AppValueSlider(
                  title: 'spread radius',
                  value: state.spreadRadius,
                  onChanged: (v) => context
                      .read<WebBoxBloc>()
                      .add(WebBoxEvent.updateSpread(v)),
                ),
                const Divider(),
                StandardColorPicker(
                  title: 'Shadow color:',
                  startColor: state.shadowColor,
                  onChanged: (v) => context
                      .read<WebBoxBloc>()
                      .add(WebBoxEvent.updateShadowColor(v)),
                ),
                const Divider(),
                StandardColorPicker(
                  title: 'Box color:',
                  startColor: state.animatedBoxColor,
                  onChanged: (v) => context
                      .read<WebBoxBloc>()
                      .add(WebBoxEvent.updateAnimatedBoxColor(v)),
                ),
              ],
            ),
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
  Widget build(BuildContext context) => Container(
        // height: _height,
        width: _width,
        color: Colors.white,
        child: BlocBuilder<WebBoxBloc, WebBoxState>(
          builder: (_, state) => state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            updateWebBox: (state) => Column(
              children: [
                IconButton(
                    onPressed: () {
                      context
                          .read<WebBoxBloc>()
                          .add(const WebBoxEvent.undoAnimatedBox());
                    },
                    icon: const Icon(Icons.undo)),
                const Divider(),
                AppValueSlider(
                  title: 'top left',
                  value: state.topLeftRadius,
                  min: _radiusMin,
                  max: _radiusMax,
                  onChanged: (v) => context
                      .read<WebBoxBloc>()
                      .add(WebBoxEvent.updateTopLeftRadius(v)),
                ),
                const Divider(),
                AppValueSlider(
                  title: 'top right',
                  value: state.topRightRadius,
                  min: _radiusMin,
                  max: _radiusMax,
                  onChanged: (v) => context
                      .read<WebBoxBloc>()
                      .add(WebBoxEvent.updateTopRightRadius(v)),
                ),
                const Divider(),
                AppValueSlider(
                  title: 'bottom left',
                  value: state.bottomLeftRadius,
                  min: _radiusMin,
                  max: _radiusMax,
                  onChanged: (v) => context
                      .read<WebBoxBloc>()
                      .add(WebBoxEvent.updateBottomLeftRadius(v)),
                ),
                const Divider(),
                AppValueSlider(
                  title: 'bottom right',
                  value: state.bottomRightRadius,
                  min: _radiusMin,
                  max: _radiusMax,
                  onChanged: (v) => context
                      .read<WebBoxBloc>()
                      .add(WebBoxEvent.updateBottomRightRadius(v)),
                ),
              ],
            ),
          ),
        ),
      );
}

class SizeControllers extends StatelessWidget {
  const SizeControllers({Key? key}) : super(key: key);

  static const _width = 300.0;
  static const _valueMin = 0.0;
  static const _valueMax = 350.0;

  @override
  Widget build(BuildContext context) => Container(
        width: _width,
        color: Colors.white,
        child: BlocBuilder<WebBoxBloc, WebBoxState>(
          builder: (_, state) => state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            updateWebBox: (state) => Column(
              children: [
                IconButton(
                    onPressed: () {
                      context
                          .read<WebBoxBloc>()
                          .add(const WebBoxEvent.undoAnimatedBox());
                    },
                    icon: const Icon(Icons.undo)),
                const Divider(),
                AppValueSlider(
                  title: 'Height',
                  value: state.boxHeight,
                  min: _valueMin,
                  max: _valueMax,
                  onChanged: (v) => context
                      .read<WebBoxBloc>()
                      .add(WebBoxEvent.updateBoxHeight(v)),
                ),
                const Divider(),
                AppValueSlider(
                  title: 'Width',
                  value: state.boxWidth,
                  min: _valueMin,
                  max: _valueMax,
                  onChanged: (v) => context
                      .read<WebBoxBloc>()
                      .add(WebBoxEvent.updateBoxWidth(v)),
                ),
              ],
            ),
          ),
        ),
      );
}

class GradientControllers extends StatefulWidget {
  const GradientControllers({Key? key}) : super(key: key);

  static const _width = 300.0;
  static const _radiusMin = 0.0;
  static const _radiusMax = 350.0;

  @override
  State<GradientControllers> createState() => _GradientControllersState();
}

class _GradientControllersState extends State<GradientControllers> {
  var _asd = {0};
  @override
  Widget build(BuildContext context) => Container(
      width: GradientControllers._width,
      color: Colors.white,
      child: BlocBuilder<GradientBoxBloc, GradientBoxState>(
        builder: (_, state) => Column(
          children: [
            AppSegmentButtons(
              isGradiennEnabled: state.isGradientEnabled,
              isLinearGradient: state.isLinearGradient,
              isRadialGradient: state.isRadialGradient,
              onChanged: (v) => context
                  .read<GradientBoxBloc>()
                  .add(GradientBoxEvent.changeGradientState(value: v)),
            ),
            const Divider(),
            Text('Directon:'),
            GradientDirection(),
            const Divider(),
            IconButton(
                onPressed: () {
                  context
                      .read<GradientBoxBloc>()
                      .add(const GradientBoxEvent.revertChanges());
                },
                icon: const Icon(Icons.undo)),
            const Divider(),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  itemCount: state.gradientColors.length,
                  itemBuilder: (context, index) {
                    return ColorAndValueForGradientPicker(
                      valueOnChanged: (v) => context
                          .read<GradientBoxBloc>()
                          .add(GradientBoxEvent.updateGradientValue(
                              id: index, value: v)),
                      colorOnChanged: (Color v) => context
                          .read<GradientBoxBloc>()
                          .add(GradientBoxEvent.updateGradientColor(
                              id: index, color: v)),
                      startColor: state.gradientColors[index].color,
                      index: index,
                      value: state.gradientColors[index].value,
                    );
                  }),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () => context
                      .read<GradientBoxBloc>()
                      .add(const GradientBoxEvent.addGradientColor()),
                  icon: const Icon(Icons.add),
                  label: const Text('Add color'),
                ),
                ElevatedButton.icon(
                  onPressed: () => context
                      .read<GradientBoxBloc>()
                      .add(const GradientBoxEvent.removeGradientColor()),
                  icon: const Icon(Icons.remove),
                  label: const Text('Remove color'),
                )
              ],
            )
          ],
        ),
      ));
}
