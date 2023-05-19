import 'package:box_shadow_generator/src/presentation/widgets/drawer/web_box_drawer.dart';
import 'package:flutter/material.dart';

import '../../../core/values/dimens.dart';

class LargeResponsiveScreen extends StatelessWidget {
  const LargeResponsiveScreen({Key? key, required this.controllers, required this.animatedBox}) : super(key: key);
  final Widget controllers;
  final Widget animatedBox;
  @override
  Widget build(BuildContext context) => Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: double.infinity,
              decoration: const BoxDecoration(boxShadow: [BoxShadow(blurRadius: 15, offset: Offset(7, 0), spreadRadius: -16)]),
              child: Container(
                color: Colors.white,
                child: const WebBoxDrawer(
                  isLargeDisplay: true,
                ),
              ),
            ),
            Expanded(
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
          ],
        ),
      );
}
