import 'package:flutter/cupertino.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'gradient_direction_model.freezed.dart';
part 'gradient_direction_model.g.dart';

@freezed
class GradientDirectionModel with _$GradientDirectionModel {
  const GradientDirectionModel._();
  const factory GradientDirectionModel({
    required String name,
    required double aligmentX,
    required double aligmentY,
  }) = _GradientDirectionModel;

  Alignment getAligment() {
    return Alignment(aligmentX, aligmentY);
  }

  factory GradientDirectionModel.fromJson(Map<String, Object?> json) =>
      _$GradientDirectionModelFromJson(json);
}

final allGradientDirecitons = <GradientDirectionModel>[
  const GradientDirectionModel(
      name: 'TopRight', aligmentX: 1.0, aligmentY: -1.0),
  const GradientDirectionModel(
      name: 'TopLeft', aligmentX: -1.0, aligmentY: -1.0),
  const GradientDirectionModel(
      name: 'TopCenter', aligmentX: 0.0, aligmentY: -1.0),
  const GradientDirectionModel(
      name: 'CenterRight', aligmentX: 1.0, aligmentY: 0.0),
  const GradientDirectionModel(
      name: 'CenterLeft', aligmentX: -1.0, aligmentY: 0.0),
  const GradientDirectionModel(name: 'Center', aligmentX: 0.0, aligmentY: 0.0),
  const GradientDirectionModel(
      name: 'BottomRight', aligmentX: 1.0, aligmentY: 1.0),
  const GradientDirectionModel(
      name: 'BottomLeft', aligmentX: -1.0, aligmentY: 1.0),
  const GradientDirectionModel(
      name: 'BottomCenter', aligmentX: 0.0, aligmentY: 1.0),
];
