import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/data/models/web_box_model.dart';
import 'src/presentation/pages/web_box_screen.dart';

Future<void> main() async {
  //init hive
  await Hive.initFlutter();
  Hive.registerAdapter(WebBoxModelAdapter());
  await Hive.openBox<WebBoxModel>("WebBoxHiveBox");
  //run app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WebboxScreen(),
    );
  }
}
