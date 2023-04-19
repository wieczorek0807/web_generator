import 'package:box_shadow_generator/injection_container.dart'
    as injection_container;
import 'package:box_shadow_generator/src/presentation/pages/border_radius_screen.dart';
import 'package:flutter/material.dart';

import 'src/presentation/pages/box_shadow_screen.dart';

Future<void> main() async {
  await injection_container.setup();
  //run app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/boxShadowScreen",
      routes: {
        "/boxShadowScreen": (context) => const BoxShadowScreen(),
        "/borderRadiusScreen": (context) => const BorderRadiusScreen()
      },
      // home: WebboxScreen(),
    );
  }
}
