import 'package:box_shadow_generator/src/core/values/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:box_shadow_generator/src/presentation/screens/update_shadows/bloc/shadow_bloc.dart';

class AnimatedBox extends StatelessWidget {
  const AnimatedBox({Key? key}) : super(key: key);

  static const _height = 500.0;
  static const _width = 500.0;

  @override
  Widget build(BuildContext context) => Container(
        width: _width,
        height: _height,
        color: Colors.white,
        alignment: Alignment.center,
        child: BlocBuilder<ShadowBloc, ShadowState>(
          builder: (context, state) => state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            updateShadow: (state) => Container(
              height: AppDimens.animatedContainerSize,
              width: AppDimens.animatedContainerSize,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                    blurRadius: state.blurRadius,
                    color: state.color,
                    offset: state.offset,
                    spreadRadius: state.spreadRadius,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
