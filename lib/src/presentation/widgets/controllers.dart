import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/web_box/web_box_bloc.dart';
import 'app_color_picker.dart';
import 'app_value_slider.dart';

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
                AppColorPicker(
                  title: 'Shadow color:',
                  startColor: state.shadowColor,
                  onChanged: (v) => context
                      .read<WebBoxBloc>()
                      .add(WebBoxEvent.updateShadowColor(v)),
                ),
                const Divider(),
                AppColorPicker(
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
