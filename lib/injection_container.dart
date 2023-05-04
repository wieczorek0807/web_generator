import 'package:box_shadow_generator/src/data/datasources/web_box_local_data_source.dart';
import 'package:box_shadow_generator/src/data/repositories/web_box_repository_impl.dart';
import 'package:box_shadow_generator/src/domain/usecases/get_web_box_usecase.dart';
import 'package:box_shadow_generator/src/presentation/bloc/animated_box/animated_box_bloc.dart';
import 'package:box_shadow_generator/src/presentation/bloc/routing/routing_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'src/data/models/web_box_model.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  //Repository
  getIt.registerLazySingleton(
      () => WebBoxRepositoryImpl(webBoxLocalDataSource: getIt()));

  //Use Cases
  getIt.registerLazySingleton(() => GetWebBoxUseCase(repository: getIt()));

  //Bloc
  // getIt.registerFactory(() =>
  //     WebBoxBloc(repositoryImpl: getIt(), getWebBoxUseCase: getIt())
  //       ..initialize());

  getIt.registerLazySingleton(() => RoutingCubit());

  getIt.registerLazySingleton(() => AnimatedBoxBloc());

  // WidgetsFlutterBinding.ensureInitialized();
  // HydratedBloc.storage = await HydratedStorage.build(
  //     storageDirectory: HydratedStorage.webStorageDirectory);

  //Data sources
  const String hiveBox = "WebBoxHiveBox";
  const String key = "shadow_key_1";

  await Hive.initFlutter();
  Hive.registerAdapter(WebBoxModelAdapter());
  await Hive.openBox<WebBoxModel>(hiveBox);

  getIt.registerLazySingleton<WebBoxLocalDataSource>(() {
    return WebBoxLocalDataSourceImpl(
      hiveBox: hiveBox,
      key: key,
    );
  });
}
