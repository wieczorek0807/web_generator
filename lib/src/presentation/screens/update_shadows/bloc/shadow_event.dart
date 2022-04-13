part of 'shadow_bloc.dart';

@freezed
class ShadowEvent with _$ShadowEvent {

  const factory ShadowEvent.initial() = _InitialEvent;

  // offset
  const factory ShadowEvent.updateOffsetY(double value) = _UpdateOffsetY;
  const factory ShadowEvent.updateOffsetX(double value) = _UpdateOffsetX;

  // shadow
  const factory ShadowEvent.updateBlur(double value) = _UpdateBlur;
  const factory ShadowEvent.updateSpread(double value) = _UpdateRadius;

  // colors
  const factory ShadowEvent.updateAnimatedBoxColor(Color value) = _UpdateAnimatedBoxColor;
  const factory ShadowEvent.updateShadowColor(Color value) = _UpdateShadowColor;
}