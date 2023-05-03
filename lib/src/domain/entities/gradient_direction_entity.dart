import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class GradientDirectionEntity extends Equatable {
  final String name;
  final AlignmentGeometry value;

  const GradientDirectionEntity({
    required this.name,
    required this.value,
  });

  @override
  List<Object?> get props => [name, value];
}

const List<GradientDirectionEntity> allGradientDirecitons = [
  GradientDirectionEntity(name: 'Top Right', value: Alignment.topRight),
  GradientDirectionEntity(name: 'Top Left', value: Alignment.topLeft),
  GradientDirectionEntity(name: 'Top Center', value: Alignment.topCenter),
  GradientDirectionEntity(name: 'Center Right', value: Alignment.centerRight),
  GradientDirectionEntity(name: 'Center Left', value: Alignment.centerLeft),
  GradientDirectionEntity(name: 'Center', value: Alignment.center),
  GradientDirectionEntity(name: 'Bottom Right', value: Alignment.bottomRight),
  GradientDirectionEntity(name: 'Bottom Left', value: Alignment.bottomLeft),
  GradientDirectionEntity(name: 'Bottom Center', value: Alignment.bottomCenter),
];
