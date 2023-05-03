import 'package:box_shadow_generator/src/core/values/colors.dart';
import 'package:box_shadow_generator/src/presentation/bloc/routing/cubit/routing_cubit.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/values/dimens.dart';
import '../bloc/routing/cubit/routing_state.dart';
import '../widgets/drawer/web_box_drawer.dart';

class WebBoxResponsiveScreen extends StatelessWidget {
  const WebBoxResponsiveScreen({
    Key? key,
    required this.shadowControllers,
    required this.radiusControllers,
    required this.animatedBox,
    required this.sizeControllers,
    required this.gradientControllers,
  }) : super(key: key);
  final Widget shadowControllers;
  final Widget radiusControllers;
  final Widget sizeControllers;
  final Widget gradientControllers;

  final Widget animatedBox;

  @override
  Widget build(BuildContext context) {
    final currnetWidth = MediaQuery.of(context).size.width;
    return BlocBuilder<RoutingCubit, RoutingState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(state.title),
            backgroundColor: AppColors.primary,
          ),
          backgroundColor: Colors.white,
          drawer: const WebBoxDrawer(),
          body: BlocBuilder<RoutingCubit, RoutingState>(
              builder: (context, state) {
            if (state.boxShadowscreen) {
              if (currnetWidth < 900) {
                return _MobileBody(
                    controllers: shadowControllers, animatedBox: animatedBox);
              } else {
                return _DesktopBody(
                    controllers: shadowControllers, animatedBox: animatedBox);
              }
            }
            if (state.boxRadiusscreen) {
              if (currnetWidth < 900) {
                return _MobileBody(
                    controllers: radiusControllers, animatedBox: animatedBox);
              } else {
                return _DesktopBody(
                    controllers: radiusControllers, animatedBox: animatedBox);
              }
            }
            if (state.boxSizescreen) {
              if (currnetWidth < 900) {
                return _MobileBody(
                    controllers: sizeControllers, animatedBox: animatedBox);
              } else {
                return _DesktopBody(
                    controllers: sizeControllers, animatedBox: animatedBox);
              }
            }
            if (currnetWidth < 900) {
              return _MobileBody(
                  controllers: gradientControllers, animatedBox: animatedBox);
            } else {
              return _DesktopBody(
                  controllers: gradientControllers, animatedBox: animatedBox);
            }
          }),
        );
      },
    );
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody({required this.controllers, required this.animatedBox});
  final Widget controllers;
  final Widget animatedBox;
  @override
  Widget build(BuildContext context) => Center(
        child: SingleChildScrollView(
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
