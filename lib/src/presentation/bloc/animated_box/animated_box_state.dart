part of 'animated_box_bloc.dart';

@freezed
class AnimatedBoxState with _$AnimatedBoxState {
  const factory AnimatedBoxState({
    required Offset offset,
    required double boxWidth,
    required double boxHeight,
    required Color shadowColor,
    required Color animatedBoxColor,
    required double blurRadius,
    required double spreadRadius,
    required double topLeftRadius,
    required double topRightRadius,
    required double bottomLeftRadius,
    required double bottomRightRadius,
    required List<GradientColorEntity> gradientColors,
    required bool isGradientEnabled,
    required bool isLinearGradient,
    required bool isRadialGradient,
    required GradientDirectionEntity beginLinearGradient,
    required GradientDirectionEntity endLinearGradient,
    required GradientDirectionEntity centerRadiusGradient,
  }) = _UpdateAnimatedBox;
}
