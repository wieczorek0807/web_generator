part of 'shadow_bloc.dart';

@freezed
class ShadowState with _$ShadowState {
  const factory ShadowState.initial() = _InitialState;

  const factory ShadowState.updateShadow({
    required Offset offset,
    required Color shadowColor,
    required Color animatedBoxColor,
    required double blurRadius,
    required double spreadRadius,
  }) = _UpdateShadow;

  const factory ShadowState.shadowLoaded({required Shadow shadow}) =
      _ShadowLoaded;
}
