import 'package:box_shadow_generator/src/presentation/bloc/routing/cubit/routing_cubit.dart';
import 'package:box_shadow_generator/src/presentation/widgets/app_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/values/dimens.dart';
import '../bloc/routing/cubit/routing_state.dart';

class WebBoxResponsiveScreen extends StatelessWidget {
  const WebBoxResponsiveScreen(
      {Key? key,
      required this.shadowControllers,
      required this.radiusControllers,
      required this.animatedBox})
      : super(key: key);
  final Widget shadowControllers;
  final Widget radiusControllers;
  final Widget animatedBox;

  @override
  Widget build(BuildContext context) {
    final currnetWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body:
            BlocBuilder<RoutingCubit, RoutingState>(builder: (context, state) {
          if (state.index == ScreenRoute.boxShadowscreen) {
            if (currnetWidth < 900) {
              return _MobileBody(
                  controllers: shadowControllers, animatedBox: animatedBox);
            } else {
              return _DesktopBody(
                  controllers: shadowControllers, animatedBox: animatedBox);
            }
          }
          if (currnetWidth < 900) {
            return _MobileBody(
                controllers: radiusControllers, animatedBox: animatedBox);
          } else {
            return _DesktopBody(
                controllers: radiusControllers, animatedBox: animatedBox);
          }
        }),
        bottomNavigationBar: BlocBuilder<RoutingCubit, RoutingState>(
          builder: (context, state) {
            return AppBottomNavigationBar(routeId: state.index);
          },
        ));
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody({required this.controllers, required this.animatedBox});
  final Widget controllers;
  final Widget animatedBox;
  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
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
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: [animatedBox, controllers]),
          ),
        ),
      ],
    ));
  }
}
