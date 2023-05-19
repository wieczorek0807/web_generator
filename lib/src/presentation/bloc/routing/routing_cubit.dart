// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routing_state.dart';

class RoutingCubit extends Cubit<RoutingState> {
  RoutingCubit() : super(const RoutingState(title: 'Box Shadow Generator', boxShadowscreen: true));

  void changeToBoxShadowScreen() => emit(const RoutingState(title: 'Box Shadow Generator', boxShadowscreen: true));
  void changeToBoxRadiusScreen() => emit(const RoutingState(title: 'Border Radius Generator', boxRadiusscreen: true));
  void changeToBoxSizeScreen() => emit(const RoutingState(title: 'Change Size of Block', boxSizescreen: true));
  void changeToGradinetScreen() => emit(const RoutingState(title: 'Gradient Generator', gradientScreen: true));
}

abstract class ScreenRoute {
  static const boxShadowscreen = 0;
  static const boxRadiusscreen = 1;
  static const boxSizescreen = 2;
  static const gradientScreen = 3;
}
