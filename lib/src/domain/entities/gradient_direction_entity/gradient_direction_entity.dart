import 'package:flutter/cupertino.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'gradient_direction_entity.freezed.dart';
part 'gradient_direction_entity.g.dart';

@freezed
class GradientDirectionEntity with _$GradientDirectionEntity {
  const GradientDirectionEntity._();
  const factory GradientDirectionEntity({
    required String name,
    required double aligmentX,
    required double aligmentY,
  }) = _GradientDirectionEntity;

  Alignment getAligment() {
    return Alignment(aligmentX, aligmentY);
  }

  factory GradientDirectionEntity.fromJson(Map<String, Object?> json) =>
      _$GradientDirectionEntityFromJson(json);
}

const List<GradientDirectionEntity> allGradientDirecitons = [
  GradientDirectionEntity(name: 'Top Right', aligmentX: 1.0, aligmentY: -1.0),
  GradientDirectionEntity(name: 'Top Left', aligmentX: -1.0, aligmentY: -1.0),
  GradientDirectionEntity(name: 'Top Center', aligmentX: 0.0, aligmentY: -1.0),
  GradientDirectionEntity(name: 'Center Right', aligmentX: 1.0, aligmentY: 0.0),
  GradientDirectionEntity(name: 'Center Left', aligmentX: -1.0, aligmentY: 0.0),
  GradientDirectionEntity(name: 'Center', aligmentX: 0.0, aligmentY: 0.0),
  GradientDirectionEntity(name: 'Bottom Right', aligmentX: 1.0, aligmentY: 1.0),
  GradientDirectionEntity(name: 'Bottom Left', aligmentX: -1.0, aligmentY: 1.0),
  GradientDirectionEntity(
      name: 'Bottom Center', aligmentX: 0.0, aligmentY: 1.0),
];
