import 'package:flutter/material.dart';

import '../../core/values/dimens.dart';

class WebBoxResponsiveScreen extends StatelessWidget {
  const WebBoxResponsiveScreen(
      {required this.controllers, required this.animatedBox, Key? key})
      : super(key: key);
  final Widget controllers;
  final Widget animatedBox;

  @override
  Widget build(BuildContext context) {
    final currnetWidth = MediaQuery.of(context).size.width;
    if (currnetWidth < 900) {
      return _MobileBody(controllers: controllers, animatedBox: animatedBox);
    } else {
      return _DesktopBody(controllers: controllers, animatedBox: animatedBox);
    }
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody({required this.controllers, required this.animatedBox});
  final Widget controllers;
  final Widget animatedBox;
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                controllers,
                const SizedBox(width: AppDimens.d100),
                animatedBox
              ],
            ),
          ],
        ),
      );
}

class _MobileBody extends StatelessWidget {
  const _MobileBody({required this.controllers, required this.animatedBox});
  final Widget controllers;
  final Widget animatedBox;
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [animatedBox, controllers]),
            ),
          ),
        ],
      )));
}
