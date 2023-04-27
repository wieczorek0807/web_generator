import 'package:equatable/equatable.dart';

class RoutingState extends Equatable {
  final String title;
  final bool boxShadowscreen;
  final bool boxRadiusscreen;
  final bool boxSizescreen;
  final bool gradientScreen;

  const RoutingState(
      {this.boxShadowscreen = false,
      this.boxRadiusscreen = false,
      this.boxSizescreen = false,
      this.gradientScreen = false,
      required this.title});

  @override
  List<Object?> get props =>
      [title, boxShadowscreen, boxRadiusscreen, boxSizescreen, gradientScreen];
}
