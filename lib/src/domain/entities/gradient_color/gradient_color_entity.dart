import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'gradient_color_entity.freezed.dart';
part 'gradient_color_entity.g.dart';

@freezed
class GradientColorEntity with _$GradientColorEntity {
  const factory GradientColorEntity({
    required int id,
    required Color color,
    required double value,
  }) = _GradientColorEntity;

  factory GradientColorEntity.fromJson(Map<String, Object?> json) =>
      _$GradientColorEntityFromJson(json);
}
