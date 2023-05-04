import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gradient_color_entity.freezed.dart';
part 'gradient_color_entity.g.dart';

@freezed
class GradientColorEntity with _$GradientColorEntity {
  const factory GradientColorEntity({
    required int id,
    @ColorJsonConverter() required Color color,
    required double value,
  }) = _GradientColorEntity;

  factory GradientColorEntity.fromJson(Map<String, Object?> json) =>
      _$GradientColorEntityFromJson(json);
}

class ColorJsonConverter implements JsonConverter<Color, int> {
  const ColorJsonConverter();

  @override
  Color fromJson(int json) {
    return Color(json);
  }

  @override
  int toJson(Color color) => color.value;
}
