import 'package:box_shadow_generator/src/core/values/dimens.dart';
import 'package:box_shadow_generator/src/data/datasources/web_box_local_data_source.dart';
import 'package:box_shadow_generator/src/data/repositories/web_box_repository_impl.dart';
import 'package:box_shadow_generator/src/presentation/bloc/web_box_bloc.dart';
import 'package:box_shadow_generator/src/presentation/widgets/controllers.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_screen.dart';
import '../widgets/animated_box.dart';

WebBoxLocalDataSource _webBoxLocalDataSource = WebBoxLocalDataSourceImpl();
WebBoxRepositoryImpl _repositoryImpl =
    WebBoxRepositoryImpl(webBoxLocalDataSource: _webBoxLocalDataSource);

class WebboxScreen extends StatelessWidget {
  const WebboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) =>
                WebBoxBloc(repositoryImpl: _repositoryImpl)..initialize(),
          ),
        ],
        child: const BaseScreen(
          child: _Body(),
        ),
      );
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Controllers(),
              SizedBox(width: AppDimens.d100),
              AnimatedBox(),
            ],
          ),
        ],
      );
}
