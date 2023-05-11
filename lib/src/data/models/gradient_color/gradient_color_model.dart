import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gradient_color_model.freezed.dart';
part 'gradient_color_model.g.dart';

@freezed
class GradientColorModel with _$GradientColorModel {
  const factory GradientColorModel({
    required int id,
    required int color,
    required double value,
  }) = _GradientColorModel;

  factory GradientColorModel.fromJson(Map<String, Object?> json) =>
      _$GradientColorModelFromJson(json);
}
