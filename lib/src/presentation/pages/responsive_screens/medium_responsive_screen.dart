import 'package:flutter/material.dart';

import '../../../core/values/dimens.dart';

class MediumResponsiveScreen extends StatelessWidget {
  const MediumResponsiveScreen({
    Key? key,
    required this.controllers,
    required this.animatedBox,
  }) : super(key: key);
  final Widget controllers;
  final Widget animatedBox;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [controllers, const SizedBox(width: AppDimens.d130), animatedBox],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
