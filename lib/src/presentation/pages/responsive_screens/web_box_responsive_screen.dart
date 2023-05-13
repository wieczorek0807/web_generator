import 'package:box_shadow_generator/src/core/values/colors.dart';
import 'package:box_shadow_generator/src/presentation/bloc/routing/routing_cubit.dart';
import 'package:box_shadow_generator/src/presentation/pages/responsive_screens/large_responsive_screen.dart';
import 'package:box_shadow_generator/src/presentation/pages/responsive_screens/small_responsive_screen.dart';
import 'package:box_shadow_generator/src/presentation/widgets/global/web_box_app_bar.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';
import '../../../core/values/dimens.dart';
import '../../bloc/routing/routing_state.dart';
import '../../widgets/drawer/drawer_list_tile.dart';
import '../../widgets/drawer/web_box_drawer.dart';
import 'medium_responsive_screen.dart';

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
          appBar: WebBoxAppBar(
            title: currnetWidth <= 1200 ? state.title : 'Web box generator',
          ),
          backgroundColor: Colors.white,
          drawer: currnetWidth <= 1200
              ? const Drawer(
                  child: WebBoxDrawer(
                  isLargeDisplay: false,
                ))
              : null,
          body: BlocBuilder<RoutingCubit, RoutingState>(
              builder: (context, state) {
            if (state.boxShadowscreen) {
              return _ResponsiveScreenHelper(
                controllers: shadowControllers,
                animatedBox: animatedBox,
              );
            } else if (state.boxRadiusscreen) {
              print('dupa');
              return _ResponsiveScreenHelper(
                controllers: radiusControllers,
                animatedBox: animatedBox,
              );
            } else if (state.boxSizescreen) {
              return _ResponsiveScreenHelper(
                controllers: sizeControllers,
                animatedBox: animatedBox,
              );
            }
            return _ResponsiveScreenHelper(
              controllers: gradientControllers,
              animatedBox: animatedBox,
            );
          }),
        );
      },
    );
  }
}

class _ResponsiveScreenHelper extends StatelessWidget {
  final Widget controllers;
  final Widget animatedBox;
  const _ResponsiveScreenHelper({
    required this.controllers,
    required this.animatedBox,
  });

  @override
  Widget build(BuildContext context) {
    final currnetWidth = MediaQuery.of(context).size.width;
    print(currnetWidth);
    if (currnetWidth < 900) {
      return MediumResponsiveScreen(
        controllers: controllers,
        animatedBox: animatedBox,
      );
    } else if (currnetWidth < 1200) {
      return SmallResponsiveScreen(
          controllers: controllers, animatedBox: animatedBox);
    } else {
      return LargeResponsiveScreen(
          controllers: controllers, animatedBox: animatedBox);
    }
  }
}
