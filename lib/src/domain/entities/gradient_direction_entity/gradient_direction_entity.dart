import 'package:flutter/cupertino.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'gradient_direction_entity.freezed.dart';
// part 'gradient_direction_entity.g.dart';

@freezed
class GradientDirectionEntity with _$GradientDirectionEntity {
  const factory GradientDirectionEntity({
    required String name,
    required AlignmentGeometry value,
  }) = _GradientDirectionEntity;

  // factory GradientDirectionEntity.fromJson(Map<String, Object?> json) =>
  //     _$GradientDirectionEntity(json);
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
