import 'package:flutter/animation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'shadow.g.dart';
part 'shadow.freezed.dart';

@freezed
class Shadow extends HiveObject with _$Shadow {
  @HiveType(typeId: 1)
  const factory Shadow({
    @HiveField(0) required final double offsetDx,
    @HiveField(1) required final double offsetDy,
    @HiveField(2) required final double spreadRadius,
    @HiveField(3) required final double blurRadius,
    @HiveField(4) required final int shadowColor,
    @HiveField(5) required final int animatedBoxColor,
  }) = _Shadow;
}
