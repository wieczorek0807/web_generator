part of 'gradient_box_bloc.dart';

@freezed
class GradientBoxEvent with _$GradientBoxEvent {
  const factory GradientBoxEvent.initial() = _InitialEvent;

  const factory GradientBoxEvent.addGradientColor() = _AddGradientColor;
  const factory GradientBoxEvent.removeGradientColor() = _RemoveGradientColor;

  const factory GradientBoxEvent.updateGradientColor(
      {required int id, required Color color}) = _UpdateGradientColor;
  const factory GradientBoxEvent.updateGradientValue(
      {required int id, required double value}) = _UpdateGradientValue;

  const factory GradientBoxEvent.changeBeginValue(
          {required GradientDirectionEntity beginLinearGradient}) =
      _ChangeBeginValue;

  const factory GradientBoxEvent.changeEndValue(
      {required GradientDirectionEntity endLinearGradient}) = _ChangeEndValue;
  const factory GradientBoxEvent.changeCenterValue(
          {required GradientDirectionEntity centerRadiusGradient}) =
      _ChangeCenterValue;

  const factory GradientBoxEvent.changeGradientState({required int value}) =
      _ChangeGradientState;

  const factory GradientBoxEvent.revertChanges() = _RevertChanges;
}
