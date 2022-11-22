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
  }) = _UpdateWebBox;
}
