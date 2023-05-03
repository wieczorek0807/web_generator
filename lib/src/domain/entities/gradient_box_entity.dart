import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class GradientColorEntity extends Equatable {
  final int id;
  final Color color;
  final double value;

  const GradientColorEntity(
    this.color,
    this.value,
    this.id,
  );

  @override
  List<Object?> get props => [color, value, id];
}

// ignore: must_be_immutable
