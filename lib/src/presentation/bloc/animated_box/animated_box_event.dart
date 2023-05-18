part of 'animated_box_bloc.dart';

@freezed
class AnimatedBoxEvent with _$AnimatedBoxEvent {
  const factory AnimatedBoxEvent.initial() = _InitialEvent;

  // undo changes
  const factory AnimatedBoxEvent.undoChanges() = _UndoChanges;

  // offset
  const factory AnimatedBoxEvent.updateOffset({double? x, double? y}) = _UpdateOffset;

  // shadow blur
  const factory AnimatedBoxEvent.updateBlur(double value) = _UpdateBlur;

  // shadow radius
  const factory AnimatedBoxEvent.updateSpread(double value) = _UpdateSpread;

  // box and shadow colors
  const factory AnimatedBoxEvent.updateColor({Color? animatedBoxColor, Color? shadowColor}) = _UpdateColor;

  // border radius
  const factory AnimatedBoxEvent.updateRadius({
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
  }) = _UpdateRadius;

  // update box size
  const factory AnimatedBoxEvent.updateBoxSize({double? height, double? width}) = _UpdateBoxSize;

  // gradient state
  const factory AnimatedBoxEvent.changeGradientState({required int value}) = _ChangeGradientState;

  //add or remove gradien color
  const factory AnimatedBoxEvent.addOrRemoveGradientColor({bool? add, bool? remove}) = _AddOrRemoveGradientColor;

  //update gradient color or value
  const factory AnimatedBoxEvent.updateGradientValueColor({required int id, Color? color, double? value}) = _UpdateGradientValueColor;

  //update linear gradient value
  const factory AnimatedBoxEvent.updateLinearGradientValue(
      {GradientDirectionModel? beginLinearGradient, GradientDirectionModel? endLinearGradient}) = _UpdateLinearGradientValue;
  //update radial gradient value
  const factory AnimatedBoxEvent.updateGradientCenterValue({required GradientDirectionModel centerRadiusGradient}) =
      _UpdateGradientCenterValue;
}
