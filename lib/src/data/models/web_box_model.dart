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
  WebBoxModel(
      {required this.offsetDx,
      required this.offsetDy,
      required this.spreadRadius,
      required this.blurRadius,
      required this.shadowColor,
      required this.animatedBoxColor});

  @override
  String toString() {
    return 'offsetDx: $offsetDx offsetDy: $offsetDy spreadRadius: $spreadRadius blurRadius: $blurRadius shadowColor: $shadowColor animatedBoxColor: $animatedBoxColor';
  }
}
