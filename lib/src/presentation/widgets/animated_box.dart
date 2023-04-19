import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/values/dimens.dart';
import '../bloc/web_box/web_box_bloc.dart';

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
        child: BlocBuilder<WebBoxBloc, WebBoxState>(
          builder: (context, state) => state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            updateWebBox: (state) => Container(
              height: AppDimens.animatedContainerSize,
              width: AppDimens.animatedContainerSize,
              decoration: BoxDecoration(
                  color: state.animatedBoxColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: state.blurRadius,
                      color: state.shadowColor,
                      offset: state.offset,
                      spreadRadius: state.spreadRadius,
                    ),
                  ],
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(40))),
            ),
          ),
        ),
      );
}
