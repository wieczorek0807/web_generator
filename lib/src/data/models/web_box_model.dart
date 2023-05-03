import 'package:hive/hive.dart';

part 'web_box_model.g.dart';

@HiveType(typeId: 1)
class WebBoxModel extends HiveObject {
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
  @HiveField(6)
  double topLeftRadius;
  @HiveField(7)
  double topRightRadius;
  @HiveField(8)
  double bottomLeftRadius;
  @HiveField(9)
  double bottomRightRadius;
  @HiveField(10)
  double boxHeight;
  @HiveField(11)
  double boxWidth;

  WebBoxModel({
    required this.offsetDx,
    required this.offsetDy,
    required this.spreadRadius,
    required this.blurRadius,
    required this.shadowColor,
    required this.animatedBoxColor,
    required this.topLeftRadius,
    required this.topRightRadius,
    required this.bottomLeftRadius,
    required this.bottomRightRadius,
    required this.boxHeight,
    required this.boxWidth,
  });

  @override
  String toString() {
    return 'offsetDx: $offsetDx offsetDy: $offsetDy spreadRadius: $spreadRadius blurRadius: $blurRadius shadowColor: $shadowColor animatedBoxColor: $animatedBoxColor';
  }
}
