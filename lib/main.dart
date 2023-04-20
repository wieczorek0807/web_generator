import 'package:box_shadow_generator/injection_container.dart'
    as injection_container;
import 'package:flutter/material.dart';

import 'src/presentation/pages/web_box_main_screen.dart';

Future<void> main() async {
  await injection_container.setup();
  //run app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WebBoxMainScreen(),
    );
  }
}
