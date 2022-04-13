import 'package:box_shadow_generator/src/presentation/screens/update_shadows/bloc/shadow_bloc.dart';
import 'package:box_shadow_generator/src/presentation/widgets/app_value_slider.dart';
import 'package:box_shadow_generator/src/presentation/widgets/app_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Controllers extends StatelessWidget {
  const Controllers({Key? key}) : super(key: key);

  static const _height = 500.0;
  static const _width = 300.0;
  static const _blurMin = 0.0;

  @override
  Widget build(BuildContext context) => Container(
        height: _height,
        width: _width,
        color: Colors.white,
        child: BlocBuilder<ShadowBloc, ShadowState>(
          builder: (_, state) => state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            updateShadow: (state) => Column(
              children: [
                AppValueSlider(
                  title: 'offset dx',
                  value: state.offset.dx,
                  onChanged: (v) => context.read<ShadowBloc>().add(ShadowEvent.updateOffsetX(v)),
                ),
                const Divider(),
                AppValueSlider(
                  title: 'offset dy',
                  value: state.offset.dy,
                  onChanged: (v) => context.read<ShadowBloc>().add(ShadowEvent.updateOffsetY(v)),
                ),
                const Divider(),
                AppValueSlider(
                  title: 'blur radius',
                  min: _blurMin,
                  value: state.blurRadius,
                  onChanged: (v) => context.read<ShadowBloc>().add(ShadowEvent.updateBlur(v)),
                ),
                const Divider(),
                AppValueSlider(
                  title: 'spread radius',
                  value: state.spreadRadius,
                  onChanged: (v) => context.read<ShadowBloc>().add(ShadowEvent.updateSpread(v)),
                ),
                const Divider(),
                AppColorPicker(
                  title: 'Shadow color:',
                  startColor: Colors.black,
                  onChanged: (v) => context.read<ShadowBloc>().add(ShadowEvent.updateShadowColor(v)),
                ),
                const Divider(),
                AppColorPicker(
                  title: 'Box color:',
                  startColor: Colors.grey,
                  onChanged: (v) => context.read<ShadowBloc>().add(ShadowEvent.updateAnimatedBoxColor(v)),
                ),
              ],
            ),
          ),
        ),
      );
}
