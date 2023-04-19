import 'package:box_shadow_generator/src/presentation/bloc/routing/cubit/routing_cubit.dart';
import 'package:flutter/material.dart';

import '../../../injection_container.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key, required this.routeId})
      : super(key: key);
  final int routeId;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.border_style), label: 'Box Shadow'),
        BottomNavigationBarItem(
            icon: Icon(Icons.radio_button_unchecked_sharp),
            label: 'Border radius'),
      ],
      currentIndex: routeId,
      onTap: (value) {
        if (value == 0) {
          getIt<RoutingCubit>().changeToBoxShadowScreen();
        } else {
          getIt<RoutingCubit>().changeToBoxRadiusScreen();
        }
      },
    );
  }
}
