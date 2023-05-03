part of 'web_box_bloc.dart';

@freezed
class WebBoxEvent with _$WebBoxEvent {
  const factory WebBoxEvent.initial() = _InitialEvent;

  // offset
  const factory WebBoxEvent.updateOffsetY(double value) = _UpdateOffsetY;
  const factory WebBoxEvent.updateOffsetX(double value) = _UpdateOffsetX;

  // shadow
  const factory WebBoxEvent.updateBlur(double value) = _UpdateBlur;
  const factory WebBoxEvent.updateSpread(double value) = _UpdateRadius;

  // colors
  const factory WebBoxEvent.updateAnimatedBoxColor(Color value) =
      _UpdateAnimatedBoxColor;
  const factory WebBoxEvent.updateShadowColor(Color value) = _UpdateShadowColor;

  //undo changes
  const factory WebBoxEvent.undoAnimatedBox() = _UndoAnimatedBox;

  //get form data sources

  const factory WebBoxEvent.getFromLocalDataSource() = _GetFromLocalDataSource;

  //border radio
  const factory WebBoxEvent.updateTopLeftRadius(double value) =
      _UpdateTopLeftRadius;

  const factory WebBoxEvent.updateTopRightRadius(double value) =
      _UpdateTopRightRadius;

  const factory WebBoxEvent.updateBottomLeftRadius(double value) =
      _UpdateBottomLeftRadius;

  const factory WebBoxEvent.updateBottomRightRadius(double value) =
      _UpdateBottomRightRadius;

  //size of block

  const factory WebBoxEvent.updateBoxHeight(double value) = _UpdateBoxHeight;

  const factory WebBoxEvent.updateBoxWidth(double value) = _UpdateBoxWidth;
}
