import 'package:flutter/material.dart';

import '../../../injection_container.dart';
import '../bloc/routing/cubit/routing_cubit.dart';
import '../bloc/routing/cubit/routing_state.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import 'drawer_list_tile.dart';

class WebBoxDrawer extends StatelessWidget {
  const WebBoxDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(child: BlocBuilder<RoutingCubit, RoutingState>(
      builder: (context, state) {
        return ListView(
          padding: EdgeInsets.zero,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Web box generator',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            DrawerListTile(
              focus: state.boxShadowscreen,
              leadingIcon: const Icon(Icons.border_style),
              title: 'Box Shadow',
              onTap: getIt<RoutingCubit>().changeToBoxShadowScreen,
            ),
            DrawerListTile(
              focus: state.boxRadiusscreen,
              leadingIcon: const Icon(Icons.radio_button_unchecked_sharp),
              title: 'Border radius',
              onTap: getIt<RoutingCubit>().changeToBoxRadiusScreen,
            ),
            DrawerListTile(
              focus: state.boxSizescreen,
              leadingIcon: const Icon(Icons.pinch),
              title: 'Change size of block',
              onTap: getIt<RoutingCubit>().changeToBoxSizeScreen,
            ),
            DrawerListTile(
              focus: state.gradientScreen,
              leadingIcon: const Icon(Icons.gradient),
              title: 'Gradient Generator',
              onTap: getIt<RoutingCubit>().changeToGradinetScreen,
            ),
          ],
        );
      },
    ));
  }
}
