import 'package:hive/hive.dart';

part 'shadow.g.dart';

@HiveType(typeId: 1)
class Shadow extends HiveObject {
  @HiveField(0)
  double offsetDx;
  @HiveField(1)
  double offsetDy;
  @HiveField(2)
  double spreadRadius;
  @HiveField(3)
  double blurRadius;
  @HiveField(4)
  int shadowColor;
  @HiveField(5)
  int animatedBoxColor;
  Shadow(
      {required this.offsetDx,
      required this.offsetDy,
      required this.spreadRadius,
      required this.blurRadius,
      required this.shadowColor,
      required this.animatedBoxColor});

  Shadow copyWith(
      {double? offsetDx,
      double? offsetDy,
      double? spreadRadius,
      double? blurRadius,
      int? shadowColor,
      int? animatedBoxColor}) {
    return Shadow(
        offsetDx: offsetDx ?? this.offsetDx,
        offsetDy: offsetDy ?? this.offsetDy,
        spreadRadius: spreadRadius ?? this.spreadRadius,
        blurRadius: blurRadius ?? this.blurRadius,
        shadowColor: shadowColor ?? this.shadowColor,
        animatedBoxColor: animatedBoxColor ?? this.animatedBoxColor);
  }

  @override
  String toString() {
    return 'offsetDx: $offsetDx offsetDy: $offsetDy spreadRadius: $spreadRadius blurRadius: $blurRadius shadowColor: $shadowColor animatedBoxColor: $animatedBoxColor';
  }
}
