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
          var gradient;
          if (state.isGradientEnabled & state.isLinearGradient) {
            gradient = LinearGradient(
                colors: state.gradientColors.map((e) => e.color).toList(),
                stops: state.gradientColors.map((e) => e.value).toList(),
                begin: state.beginLinearGradient.getAligment(),
                end: state.endLinearGradient.getAligment());
          } else if (state.isGradientEnabled & state.isRadialGradient) {
            gradient = RadialGradient(
              center: state.centerRadiusGradient.getAligment(),
              colors: state.gradientColors.map((e) => e.color).toList(),
              stops: state.gradientColors.map((e) => e.value).toList(),
            );
          }

          return Container(
            height: state.boxHeight,
            width: state.boxWidth,
            decoration: BoxDecoration(
                color: state.animatedBoxColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: state.blurRadius,
                    color: state.shadowColor,
                    offset: state.offset.getOffset(),
                    spreadRadius: state.spreadRadius,
                  ),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(state.topLeftRadius),
                    topRight: Radius.circular(state.topRightRadius),
                    bottomLeft: Radius.circular(state.bottomLeftRadius),
                    bottomRight: Radius.circular(state.bottomRightRadius)),
                gradient: gradient),
          );
        },
      ));
}
