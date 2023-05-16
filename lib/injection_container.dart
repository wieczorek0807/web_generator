import 'package:box_shadow_generator/src/data/models/gradient_direction/gradient_direction_model.dart';
import 'package:box_shadow_generator/src/presentation/bloc/animated_box/animated_box_bloc.dart';
import 'package:box_shadow_generator/src/presentation/bloc/routing/routing_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'src/data/models/gradient_directions/gradient_directions.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  // Hydrated Bloc
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getTemporaryDirectory());

  // Routing Cubit
  getIt.registerLazySingleton(() => RoutingCubit());

  // Animated Box Bloc
  getIt.registerLazySingleton(() => AnimatedBoxBloc());
}
