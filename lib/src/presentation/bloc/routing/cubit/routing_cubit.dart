// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routing_state.dart';

class RoutingCubit extends Cubit<RoutingState> {
  RoutingCubit()
      : super(const RoutingState(index: ScreenRoute.boxShadowscreen));

  void changeToBoxShadowScreen() =>
      emit(const RoutingState(index: ScreenRoute.boxShadowscreen));

  void changeToBoxRadiusScreen() =>
      emit(const RoutingState(index: ScreenRoute.boxRadiusscreen));
}

abstract class ScreenRoute {
  static const boxShadowscreen = 0;
  static const boxRadiusscreen = 1;
}
