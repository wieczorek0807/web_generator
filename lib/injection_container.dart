import 'package:box_shadow_generator/src/data/datasources/web_box_local_data_source.dart';
import 'package:box_shadow_generator/src/data/repositories/web_box_repository_impl.dart';
import 'package:box_shadow_generator/src/domain/usecases/get_web_box_usecase.dart';
import 'package:box_shadow_generator/src/presentation/bloc/web_box_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  //!Features
  //Bloc
  getIt.registerFactory(() => WebBoxBloc(repositoryImpl: getIt()));

  //Use Cases
  getIt.registerLazySingleton(() => GetWebBoxUseCase(repository: getIt()));

  //repository
  getIt.registerLazySingleton(
      () => WebBoxRepositoryImpl(webBoxLocalDataSource: getIt()));

  //data sources

  getIt.registerLazySingleton(() => WebBoxLocalDataSourceImpl());

  //!Core
}
