import 'package:equatable/equatable.dart';

class RoutingState extends Equatable {
  final int index;

  const RoutingState({required this.index});

  @override
  List<Object?> get props => [index];
}
