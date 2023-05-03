part of 'web_box_bloc.dart';

@freezed
class WebBoxState with _$WebBoxState {
  const factory WebBoxState.initial() = _InitialState;

  const factory WebBoxState.updateWebBox({
    required Offset offset,
    required Color shadowColor,
    required Color animatedBoxColor,
    required double blurRadius,
    required double spreadRadius,
    required double topLeftRadius,
    required double topRightRadius,
    required double bottomLeftRadius,
    required double bottomRightRadius,
    required double boxWidth,
    required double boxHeight,
  }) = _UpdateWebBox;
}
