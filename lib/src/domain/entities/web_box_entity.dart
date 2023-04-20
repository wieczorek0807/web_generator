import 'package:box_shadow_generator/src/data/models/web_box_model.dart';
import 'package:equatable/equatable.dart';

class WebBoxEntity extends Equatable {
  late double offsetDx;
  late double offsetDy;
  late double spreadRadius;
  late double blurRadius;
  late int shadowColor;
  late int animatedBoxColor;
  late double topLeftRadius;
  late double topRightRadius;
  late double bottomLeftRadius;
  late double bottomRightRadius;

  WebBoxEntity(
      {required this.offsetDx,
      required this.offsetDy,
      required this.spreadRadius,
      required this.blurRadius,
      required this.shadowColor,
      required this.animatedBoxColor,
      required this.topLeftRadius,
      required this.topRightRadius,
      required this.bottomLeftRadius,
      required this.bottomRightRadius});

  WebBoxEntity.fromModel({required WebBoxModel model}) {
    offsetDx = model.offsetDx;
    offsetDy = model.offsetDy;
    spreadRadius = model.spreadRadius;
    blurRadius = model.blurRadius;
    shadowColor = model.shadowColor;
    animatedBoxColor = model.animatedBoxColor;
    topLeftRadius = model.topLeftRadius;
    topRightRadius = model.topRightRadius;
    bottomLeftRadius = model.bottomLeftRadius;
    bottomRightRadius = model.bottomRightRadius;
  }

  @override
  List<Object?> get props => [
        offsetDx,
        offsetDy,
        spreadRadius,
        blurRadius,
        shadowColor,
        animatedBoxColor,
        topLeftRadius,
        topRightRadius,
        bottomLeftRadius,
        bottomRightRadius,
      ];
}
