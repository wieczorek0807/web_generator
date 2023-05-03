import 'package:box_shadow_generator/injection_container.dart';
import 'package:box_shadow_generator/src/presentation/bloc/routing/cubit/routing_cubit.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/gradient_box/gradient_box_bloc.dart';
import '../bloc/web_box/web_box_bloc.dart';
import '../widgets/web_box/animated_box.dart';
import '../widgets/controllers.dart';
import 'web_box_responsive_screen.dart';

class WebBoxMainScreen extends StatelessWidget {
  const WebBoxMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) {
              return getIt<WebBoxBloc>()..initialize();
            },
          ),
          BlocProvider(
            create: (_) => getIt<RoutingCubit>(),
          ),
          BlocProvider(
            create: (context) {
              return getIt<GradientBoxBloc>()..initialize();
            },
          )
        ],
        child: const WebBoxResponsiveScreen(
          animatedBox: AnimatedBox(),
          shadowControllers: ShadowControllers(),
          radiusControllers: RadiusControllers(),
          sizeControllers: SizeControllers(),
          gradientControllers: GradientControllers(),
        ));
  }
}
