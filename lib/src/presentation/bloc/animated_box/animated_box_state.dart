part of 'animated_box_bloc.dart';

@freezed
class AnimatedBoxState with _$AnimatedBoxState {
  const factory AnimatedBoxState({
    required AnimatedBoxOffsetEntity offset,
    required double boxWidth,
    required double boxHeight,
    @ColorJsonConverter() required Color shadowColor,
    @ColorJsonConverter() required Color animatedBoxColor,
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
  }) = _AnimatedBoxState;

  factory AnimatedBoxState.fromJson(Map<String, dynamic> json) =>
      _$AnimatedBoxStateFromJson(json);
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
