part of 'animated_box_bloc.dart';

@freezed
class AnimatedBoxState with _$AnimatedBoxState {
  const factory AnimatedBoxState({
    @Default(0.0)
        double offsetDx,
    @Default(0.0)
        double offsetDy,
    @Default(350.0)
        double boxWidth,
    @Default(350.0)
        double boxHeight,
    @Default(4279308052)
        int shadowColor,
    @Default(4293848814)
        int animatedBoxColor,
    @Default(0.0)
        double blurRadius,
    @Default(0.0)
        double spreadRadius,
    @Default(BorderRadiusModel(bottomLeftRadius: 0, bottomRightRadius: 0, topLeftRadius: 0, topRightRadius: 0))
        BorderRadiusModel borderRadius,
    @Default([GradientColorModel(id: 0, color: 4278267456, value: 0), GradientColorModel(id: 1, color: 4278422668, value: 1)])
        List<GradientColorModel> gradientColors,
    @Default(false)
        bool isGradientEnabled,
    @Default(false)
        bool isLinearGradient,
    @Default(false)
        bool isRadialGradient,
    @Default(GradientDirectionModel(name: 'TopLeft', aligmentX: -1.0, aligmentY: -1.0))
        GradientDirectionModel beginLinearGradient,
    @Default(GradientDirectionModel(name: 'BottomRight', aligmentX: 1.0, aligmentY: 1.0))
        GradientDirectionModel endLinearGradient,
    @Default(GradientDirectionModel(name: 'Center', aligmentX: 0.0, aligmentY: 0.0))
        GradientDirectionModel centerRadiusGradient,
  }) = _AnimatedBoxState;

  factory AnimatedBoxState.fromJson(Map<String, dynamic> json) => _$AnimatedBoxStateFromJson(json);
}
