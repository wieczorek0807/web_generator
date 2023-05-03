part of 'gradient_box_bloc.dart';

@freezed
class GradientBoxState with _$GradientBoxState {
  const factory GradientBoxState({
    @Default([]) List<GradientColorEntity> gradientColors,
    required bool isGradientEnabled,
    required bool isLinearGradient,
    required bool isRadialGradient,
    required GradientDirectionEntity beginLinearGradient,
    required GradientDirectionEntity endLinearGradient,
    required GradientDirectionEntity centerRadiusGradient,
  }) = _UpdateGradientBox;
}
