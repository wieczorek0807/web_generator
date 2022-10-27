import 'package:box_shadow_generator/src/presentation/screens/update_shadows/model/shadow.dart';
import 'package:box_shadow_generator/src/presentation/screens/update_shadows/shadow_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  //init hive
  await Hive.initFlutter();
  Hive.registerAdapter(ShadowAdapter());
  await Hive.openBox<Shadow>("HiveBox");
  //run app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShadowScreen(),
    );
  }
}
