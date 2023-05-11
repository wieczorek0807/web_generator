part of 'animated_box_bloc.dart';

@freezed
class AnimatedBoxEvent with _$AnimatedBoxEvent {
  const factory AnimatedBoxEvent.initial() = _InitialEvent;

  // undo changes
  const factory AnimatedBoxEvent.undoChanges() = _UndoChanges;

  // offset
  const factory AnimatedBoxEvent.updateOffsetY(double value) = _UpdateOffsetY;
  const factory AnimatedBoxEvent.updateOffsetX(double value) = _UpdateOffsetX;

  // shadow
  const factory AnimatedBoxEvent.updateBlur(double value) = _UpdateBlur;
  const factory AnimatedBoxEvent.updateSpread(double value) = _UpdateRadius;

  // colors
  const factory AnimatedBoxEvent.updateAnimatedBoxColor(Color value) =
      _UpdateAnimatedBoxColor;
  const factory AnimatedBoxEvent.updateShadowColor(Color value) =
      _UpdateShadowColor;

  // border radio
  const factory AnimatedBoxEvent.updateTopLeftRadius(double value) =
      _UpdateTopLeftRadius;

  const factory AnimatedBoxEvent.updateTopRightRadius(double value) =
      _UpdateTopRightRadius;

  const factory AnimatedBoxEvent.updateBottomLeftRadius(double value) =
      _UpdateBottomLeftRadius;

  const factory AnimatedBoxEvent.updateBottomRightRadius(double value) =
      _UpdateBottomRightRadius;

  // size of block
  const factory AnimatedBoxEvent.updateBoxHeight(double value) =
      _UpdateBoxHeight;

  const factory AnimatedBoxEvent.updateBoxWidth(double value) = _UpdateBoxWidth;

  // gradient
  const factory AnimatedBoxEvent.changeGradientState({required int value}) =
      _ChangeGradientState;

  const factory AnimatedBoxEvent.addGradientColor() = _AddGradientColor;
  const factory AnimatedBoxEvent.removeGradientColor() = _RemoveGradientColor;

  const factory AnimatedBoxEvent.updateGradientColor(
      {required int id, required Color color}) = _UpdateGradientColor;
  const factory AnimatedBoxEvent.updateGradientValue(
      {required int id, required double value}) = _UpdateGradientValue;

  const factory AnimatedBoxEvent.changeGradientBeginValue(
          {required GradientDirectionModel beginLinearGradient}) =
      _ChangeGradientBeginValue;

  const factory AnimatedBoxEvent.changeGradientEndValue(
          {required GradientDirectionModel endLinearGradient}) =
      _ChangeGradientEndValue;
  const factory AnimatedBoxEvent.changeGradientCenterValue(
          {required GradientDirectionModel centerRadiusGradient}) =
      _ChangeGradientCenterValue;
}
