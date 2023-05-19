import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/animated_box/animated_box_bloc.dart';

class AnimatedBox extends StatelessWidget {
  const AnimatedBox({
    Key? key,
  }) : super(key: key);

  static const _height = 400.0;
  static const _width = 400.0;

  @override
  Widget build(BuildContext context) => Container(
        width: _width,
        height: _height,
        color: Colors.white,
        alignment: Alignment.center,
        child: BlocBuilder<AnimatedBoxBloc, AnimatedBoxState>(
          builder: (context, state) {
            // ignore: prefer_typing_uninitialized_variables
            var gradient;
            final currnetWidth = MediaQuery.of(context).size.width - 250;

            if (state.gradientState.isGradientEnabled & state.gradientState.isLinearGradient) {
              gradient = LinearGradient(
                  colors: state.animatedBox.gradientColors.map((e) => Color(e.color)).toList(),
                  stops: state.animatedBox.gradientColors.map((e) => e.value).toList(),
                  begin: state.animatedBox.beginLinearGradient.getAligment(),
                  end: state.animatedBox.endLinearGradient.getAligment());
            } else if (state.gradientState.isGradientEnabled & state.gradientState.isRadialGradient) {
              gradient = RadialGradient(
                center: state.animatedBox.centerRadiusGradient.getAligment(),
                colors: state.animatedBox.gradientColors.map((e) => Color(e.color)).toList(),
                stops: state.animatedBox.gradientColors.map((e) => e.value).toList(),
              );
            }
            if (state.animatedBox.boxWidth > currnetWidth) {
              context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateBoxSize(width: currnetWidth));
            } else if (state.animatedBox.boxHeight > currnetWidth) {
              context.read<AnimatedBoxBloc>().add(AnimatedBoxEvent.updateBoxSize(height: currnetWidth));
            }

            return Container(
              height: state.animatedBox.boxHeight,
              width: state.animatedBox.boxWidth,
              decoration: BoxDecoration(
                color: Color(state.animatedBox.animatedBoxColor),
                boxShadow: [
                  BoxShadow(
                    blurRadius: state.animatedBox.blurRadius,
                    color: Color(state.animatedBox.shadowColor),
                    offset: Offset(state.animatedBox.offsetDx, state.animatedBox.offsetDy),
                    spreadRadius: state.animatedBox.spreadRadius,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(state.animatedBox.topLeftRadius),
                  topRight: Radius.circular(state.animatedBox.topRightRadius),
                  bottomLeft: Radius.circular(state.animatedBox.bottomLeftRadius),
                  bottomRight: Radius.circular(state.animatedBox.bottomRightRadius),
                ),
                gradient: gradient,
              ),
            );
          },
        ),
      );
}
