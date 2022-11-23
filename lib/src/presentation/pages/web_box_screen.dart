import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/datasources/web_box_local_data_source.dart';
import '../../data/repositories/web_box_repository_impl.dart';
import '../bloc/web_box_bloc.dart';
import '../widgets/animated_box.dart';
import '../widgets/controllers.dart';
import 'web_box_responsive_screen.dart';

WebBoxLocalDataSource _webBoxLocalDataSource = WebBoxLocalDataSourceImpl();
WebBoxRepositoryImpl _repositoryImpl =
    WebBoxRepositoryImpl(webBoxLocalDataSource: _webBoxLocalDataSource);

class WebboxScreen extends StatelessWidget {
  const WebboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) =>
                WebBoxBloc(repositoryImpl: _repositoryImpl)..initialize(),
          ),
        ],
        child: const WebBoxResponsiveScreen(
          animatedBox: AnimatedBox(),
          controllers: Controllers(),
        ));
  }
}
