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
}
