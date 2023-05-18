import 'package:freezed_annotation/freezed_annotation.dart';

part 'gradient_state_model.freezed.dart';
part 'gradient_state_model.g.dart';

@freezed
class GradientStateModel with _$GradientStateModel {
  const factory GradientStateModel({
    required bool isGradientEnabled,
    required bool isLinearGradient,
    required bool isRadialGradient,
  }) = _GradientStateModel;

  factory GradientStateModel.fromJson(Map<String, Object?> json) => _$GradientStateModelFromJson(json);
}
