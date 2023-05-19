// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animated_box_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimatedBoxState _$$_AnimatedBoxStateFromJson(Map<String, dynamic> json) =>
    _$_AnimatedBoxState(
      animatedBox: json['animatedBox'] == null
          ? const AnimatedBoxModel(
              offsetDx: 0,
              offsetDy: 0,
              boxWidth: 350,
              boxHeight: 350,
              shadowColor: 4279308052,
              animatedBoxColor: 4293848814,
              blurRadius: 0,
              spreadRadius: 0,
              topLeftRadius: 0,
              topRightRadius: 0,
              bottomLeftRadius: 0,
              bottomRightRadius: 0,
              beginLinearGradient: GradientDirectionModel(
                  name: 'TopLeft', aligmentX: -1.0, aligmentY: -1.0),
              centerRadiusGradient: GradientDirectionModel(
                  name: 'Center', aligmentX: 0.0, aligmentY: 0.0),
              endLinearGradient: GradientDirectionModel(
                  name: 'BottomRight', aligmentX: 1.0, aligmentY: 1.0),
              gradientColors: [
                  GradientColorModel(id: 0, color: 4278267456, value: 0),
                  GradientColorModel(id: 1, color: 4278422668, value: 1)
                ])
          : AnimatedBoxModel.fromJson(
              json['animatedBox'] as Map<String, dynamic>),
      gradientState: json['gradientState'] == null
          ? const GradientStateModel(
              isGradientEnabled: false,
              isLinearGradient: false,
              isRadialGradient: false)
          : GradientStateModel.fromJson(
              json['gradientState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnimatedBoxStateToJson(_$_AnimatedBoxState instance) =>
    <String, dynamic>{
      'animatedBox': instance.animatedBox.toJson(),
      'gradientState': instance.gradientState.toJson(),
    };
