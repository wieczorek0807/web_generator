import 'package:box_shadow_generator/injection_container.dart';
import 'package:box_shadow_generator/src/presentation/bloc/animated_box/animated_box_bloc.dart';
import 'package:box_shadow_generator/src/presentation/bloc/routing/routing_cubit.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/controlers/gradient_controllers.dart';
import '../widgets/controlers/radius_controllers.dart';
import '../widgets/controlers/shadow_controllers.dart';
import '../widgets/controlers/size_controllers.dart';
import '../widgets/web_box/animated_box.dart';

import 'responsive_screens/web_box_responsive_screen.dart';

class WebBoxMainScreen extends StatelessWidget {
  const WebBoxMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<RoutingCubit>(),
          ),
          BlocProvider(
            create: (context) {
              return getIt<AnimatedBoxBloc>();
            },
          )
        ],
        child: WebBoxResponsiveScreen(
          animatedBox: const AnimatedBox(),
          shadowControllers: const ShadowControllers(),
          radiusControllers: const RadiusControllers(),
          sizeControllers: SizeControllers(),
          gradientControllers: const GradientControllers(),
        ));
  }
}
