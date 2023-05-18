// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animated_box_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimatedBoxState _$$_AnimatedBoxStateFromJson(Map<String, dynamic> json) =>
    _$_AnimatedBoxState(
      offsetDx: (json['offsetDx'] as num?)?.toDouble() ?? 0.0,
      offsetDy: (json['offsetDy'] as num?)?.toDouble() ?? 0.0,
      boxWidth: (json['boxWidth'] as num?)?.toDouble() ?? 350.0,
      boxHeight: (json['boxHeight'] as num?)?.toDouble() ?? 350.0,
      shadowColor: json['shadowColor'] as int? ?? 4279308052,
      animatedBoxColor: json['animatedBoxColor'] as int? ?? 4293848814,
      blurRadius: (json['blurRadius'] as num?)?.toDouble() ?? 0.0,
      spreadRadius: (json['spreadRadius'] as num?)?.toDouble() ?? 0.0,
      borderRadius: json['borderRadius'] == null
          ? const BorderRadiusModel(
              bottomLeftRadius: 0,
              bottomRightRadius: 0,
              topLeftRadius: 0,
              topRightRadius: 0)
          : BorderRadiusModel.fromJson(
              json['borderRadius'] as Map<String, dynamic>),
      gradientColors: (json['gradientColors'] as List<dynamic>?)
              ?.map(
                  (e) => GradientColorModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [
            GradientColorModel(id: 0, color: 4278267456, value: 0),
            GradientColorModel(id: 1, color: 4278422668, value: 1)
          ],
      gradientState: json['gradientState'] ??
          const GradientStateModel(
              isGradientEnabled: false,
              isLinearGradient: false,
              isRadialGradient: false),
      beginLinearGradient: json['beginLinearGradient'] == null
          ? const GradientDirectionModel(
              name: 'TopLeft', aligmentX: -1.0, aligmentY: -1.0)
          : GradientDirectionModel.fromJson(
              json['beginLinearGradient'] as Map<String, dynamic>),
      endLinearGradient: json['endLinearGradient'] == null
          ? const GradientDirectionModel(
              name: 'BottomRight', aligmentX: 1.0, aligmentY: 1.0)
          : GradientDirectionModel.fromJson(
              json['endLinearGradient'] as Map<String, dynamic>),
      centerRadiusGradient: json['centerRadiusGradient'] == null
          ? const GradientDirectionModel(
              name: 'Center', aligmentX: 0.0, aligmentY: 0.0)
          : GradientDirectionModel.fromJson(
              json['centerRadiusGradient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnimatedBoxStateToJson(_$_AnimatedBoxState instance) =>
    <String, dynamic>{
      'offsetDx': instance.offsetDx,
      'offsetDy': instance.offsetDy,
      'boxWidth': instance.boxWidth,
      'boxHeight': instance.boxHeight,
      'shadowColor': instance.shadowColor,
      'animatedBoxColor': instance.animatedBoxColor,
      'blurRadius': instance.blurRadius,
      'spreadRadius': instance.spreadRadius,
      'borderRadius': instance.borderRadius.toJson(),
      'gradientColors': instance.gradientColors.map((e) => e.toJson()).toList(),
      'gradientState': instance.gradientState,
      'beginLinearGradient': instance.beginLinearGradient.toJson(),
      'endLinearGradient': instance.endLinearGradient.toJson(),
      'centerRadiusGradient': instance.centerRadiusGradient.toJson(),
    };
