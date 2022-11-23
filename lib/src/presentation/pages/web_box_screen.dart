import 'package:box_shadow_generator/injection_container.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/web_box_bloc.dart';
import '../widgets/animated_box.dart';
import '../widgets/controllers.dart';
import 'web_box_responsive_screen.dart';

class WebboxScreen extends StatelessWidget {
  const WebboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<WebBoxBloc>()..initialize(),
          ),
        ],
        child: const WebBoxResponsiveScreen(
          animatedBox: AnimatedBox(),
          controllers: Controllers(),
        ));
  }
}
