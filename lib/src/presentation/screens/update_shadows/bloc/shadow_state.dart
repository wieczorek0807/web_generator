part of 'shadow_bloc.dart';

@freezed
class ShadowState with _$ShadowState {
  const factory ShadowState.initial() = _InitialState;

  const factory ShadowState.updateShadow({
    required Offset offset,
    required Color color,
    required double blurRadius,
    required double spreadRadius,
  }) = _UpdateShadow;
}
