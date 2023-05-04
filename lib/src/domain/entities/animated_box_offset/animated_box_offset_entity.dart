import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'animated_box_offset_entity.freezed.dart';
part 'animated_box_offset_entity.g.dart';

@freezed
class AnimatedBoxOffsetEntity with _$AnimatedBoxOffsetEntity {
  const AnimatedBoxOffsetEntity._();
  const factory AnimatedBoxOffsetEntity({
    required double offsetDx,
    required double offsetDy,
  }) = _AnimatedBoxOffsetEntity;

  Offset getOffset() => Offset(offsetDx, offsetDy);

  factory AnimatedBoxOffsetEntity.fromJson(Map<String, Object?> json) =>
      _$AnimatedBoxOffsetEntityFromJson(json);
}
