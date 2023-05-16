import 'package:flutter/material.dart';

import '../../../core/values/dimens.dart';

class SmallResponsiveScreen extends StatelessWidget {
  const SmallResponsiveScreen(
      {Key? key, required this.controllers, required this.animatedBox})
      : super(key: key);
  final Widget controllers;
  final Widget animatedBox;
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  const SizedBox(
                    height: AppDimens.d100,
                  ),
                  animatedBox,
                  const SizedBox(
                    height: AppDimens.d130,
                  ),
                  controllers,
                  const SizedBox(
                    height: AppDimens.d52,
                  ),
                ]),
              ),
            ),
          ],
        ),
      );
}
