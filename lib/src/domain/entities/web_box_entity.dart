import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_box_entity.freezed.dart';

@freezed
class WebBoxEntity with _$WebBoxEntity {
  factory WebBoxEntity(
      {required double offsetDx,
      required double offsetDy,
      required double spreadRadius,
      required double blurRadius,
      required int shadowColor,
      required int animatedBoxColor}) = _WebBoxEntity;
}
