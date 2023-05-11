part of 'animated_box_bloc.dart';

@freezed
class AnimatedBoxState with _$AnimatedBoxState {
  const factory AnimatedBoxState({
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
    required bool isGradientEnabled,
    required bool isLinearGradient,
    required bool isRadialGradient,
    required GradientDirectionModel beginLinearGradient,
    required GradientDirectionModel endLinearGradient,
    required GradientDirectionModel centerRadiusGradient,
  }) = _AnimatedBoxState;

  factory AnimatedBoxState.fromJson(Map<String, dynamic> json) =>
      _$AnimatedBoxStateFromJson(json);
}
