import 'package:box_shadow_generator/src/data/models/web_box_model.dart';
import 'package:equatable/equatable.dart';

class WebBoxEntity extends Equatable {
  late double offsetDx;
  late double offsetDy;
  late double spreadRadius;
  late double blurRadius;
  late int shadowColor;
  late int animatedBoxColor;

  WebBoxEntity(
      {required this.offsetDx,
      required this.offsetDy,
      required this.spreadRadius,
      required this.blurRadius,
      required this.shadowColor,
      required this.animatedBoxColor});

  WebBoxEntity.fromModel({required WebBoxModel model}) {
    offsetDx = model.offsetDx;
    offsetDy = model.offsetDy;
    spreadRadius = model.spreadRadius;
    blurRadius = model.blurRadius;
    shadowColor = model.shadowColor;
    animatedBoxColor = model.animatedBoxColor;
  }

  @override
  List<Object?> get props => [
        offsetDx,
        offsetDy,
        spreadRadius,
        blurRadius,
        shadowColor,
        animatedBoxColor
      ];
}
