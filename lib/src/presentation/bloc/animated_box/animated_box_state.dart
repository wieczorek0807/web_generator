part of 'animated_box_bloc.dart';

@freezed
class AnimatedBoxState with _$AnimatedBoxState {
  const factory AnimatedBoxState({
    @Default(AnimatedBoxModel(
      offsetDx: 0,
      offsetDy: 0,
      boxWidth: 350,
      boxHeight: 350,
      shadowColor: 4279308052,
      animatedBoxColor: 4293848814,
      blurRadius: 0,
      spreadRadius: 0,
      topLeftRadius: 0,
      topRightRadius: 0,
      bottomLeftRadius: 0,
      bottomRightRadius: 0,
      beginLinearGradient: GradientDirectionModel(name: 'TopLeft', aligmentX: -1.0, aligmentY: -1.0),
      centerRadiusGradient: GradientDirectionModel(name: 'Center', aligmentX: 0.0, aligmentY: 0.0),
      endLinearGradient: GradientDirectionModel(name: 'BottomRight', aligmentX: 1.0, aligmentY: 1.0),
      gradientColors: [GradientColorModel(id: 0, color: 4278267456, value: 0), GradientColorModel(id: 1, color: 4278422668, value: 1)],
    ))
        AnimatedBoxModel animatedBox,
    @Default(GradientStateModel(isGradientEnabled: false, isLinearGradient: false, isRadialGradient: false))
        GradientStateModel gradientState,
  }) = _AnimatedBoxState;

  factory AnimatedBoxState.fromJson(Map<String, dynamic> json) => _$AnimatedBoxStateFromJson(json);
}
