import 'package:box_shadow_generator/src/core/values/dimens.dart';
import 'package:box_shadow_generator/src/presentation/screens/update_shadows/bloc/shadow_bloc.dart';
import 'package:box_shadow_generator/src/presentation/screens/update_shadows/widgets/animated_box.dart';
import 'package:box_shadow_generator/src/presentation/screens/update_shadows/widgets/controllers.dart';
import 'package:box_shadow_generator/src/presentation/widgets/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShadowScreen extends StatelessWidget {
  const ShadowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => ShadowBloc()..initialize(),
        child: const BaseScreen(
          child: _Body(),
        ),
      );
}

class _Body extends StatelessWidget{
  const _Body();

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const [
      Controllers(),
      SizedBox(width: AppDimens.d100),
      AnimatedBox(),
    ],
  );
}