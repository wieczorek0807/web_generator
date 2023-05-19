import 'package:freezed_annotation/freezed_annotation.dart';

import '../gradient_color/gradient_color_model.dart';
import '../gradient_direction/gradient_direction_model.dart';

part 'animated_box_model.freezed.dart';
part 'animated_box_model.g.dart';

@freezed
class AnimatedBoxModel with _$AnimatedBoxModel {
  const factory AnimatedBoxModel({
    required double offsetDx,
    required double offsetDy,
    required double boxWidth,
    required double boxHeight,
    required int shadowColor,
    required int animatedBoxColor,
    required double blurRadius,
    required double spreadRadius,
    required double topLeftRadius,
    required double topRightRadius,
    required double bottomLeftRadius,
    required double bottomRightRadius,
    required List<GradientColorModel> gradientColors,
    required GradientDirectionModel beginLinearGradient,
    required GradientDirectionModel endLinearGradient,
    required GradientDirectionModel centerRadiusGradient,
  }) = _AnimatedBoxModel;

  factory AnimatedBoxModel.fromJson(Map<String, Object?> json) => _$AnimatedBoxModelFromJson(json);
}
