import 'package:box_shadow_generator/src/core/values/colors.dart';
import 'package:flutter/material.dart';

import '../../../../injection_container.dart';
import '../../bloc/routing/routing_cubit.dart';
import '../../bloc/routing/routing_state.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import 'drawer_list_tile.dart';

class WebBoxDrawer extends StatelessWidget {
  const WebBoxDrawer({Key? key, required this.isLargeDisplay})
      : super(key: key);
  final bool isLargeDisplay;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutingCubit, RoutingState>(
      builder: (context, state) {
        return Material(
          type: MaterialType.transparency,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              _webBoxDrawerHeader(isEnabled: !isLargeDisplay),
              DrawerListTile(
                focus: state.boxShadowscreen,
                leadingIcon: const Icon(Icons.border_style),
                title: 'Box Shadow',
                onTap: getIt<RoutingCubit>().changeToBoxShadowScreen,
                popAfterOnTap: !isLargeDisplay,
              ),
              DrawerListTile(
                focus: state.boxRadiusscreen,
                leadingIcon: const Icon(Icons.radio_button_unchecked_sharp),
                title: 'Border radius',
                onTap: getIt<RoutingCubit>().changeToBoxRadiusScreen,
                popAfterOnTap: !isLargeDisplay,
              ),
              DrawerListTile(
                focus: state.boxSizescreen,
                leadingIcon: const Icon(Icons.pinch),
                title: 'Change size of block',
                onTap: getIt<RoutingCubit>().changeToBoxSizeScreen,
                popAfterOnTap: !isLargeDisplay,
              ),
              DrawerListTile(
                focus: state.gradientScreen,
                leadingIcon: const Icon(Icons.gradient),
                title: 'Gradient Generator',
                onTap: getIt<RoutingCubit>().changeToGradinetScreen,
                popAfterOnTap: !isLargeDisplay,
              ),
            ],
          ),
        );
      },
    );
    // );
  }
}

class _webBoxDrawerHeader extends StatelessWidget {
  const _webBoxDrawerHeader({required this.isEnabled});

  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    if (isEnabled) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: AppColors.prussianBlue,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Web box generator',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      );
    }
    return Container();
  }
}
