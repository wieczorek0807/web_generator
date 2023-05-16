import 'package:flutter/cupertino.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path/path.dart';

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
      name: 'Top Right', aligmentX: 1.0, aligmentY: -1.0),
  const GradientDirectionModel(
      name: 'Top Left', aligmentX: -1.0, aligmentY: -1.0),
  const GradientDirectionModel(
      name: 'Top Center', aligmentX: 0.0, aligmentY: -1.0),
  const GradientDirectionModel(
      name: 'Center Right', aligmentX: 1.0, aligmentY: 0.0),
  const GradientDirectionModel(
      name: 'Center Left', aligmentX: -1.0, aligmentY: 0.0),
  const GradientDirectionModel(name: 'Center', aligmentX: 0.0, aligmentY: 0.0),
  const GradientDirectionModel(
      name: 'Bottom Right', aligmentX: 1.0, aligmentY: 1.0),
  const GradientDirectionModel(
      name: 'Bottom Left', aligmentX: -1.0, aligmentY: 1.0),
  const GradientDirectionModel(
      name: 'Bottom Center', aligmentX: 0.0, aligmentY: 1.0),
];
