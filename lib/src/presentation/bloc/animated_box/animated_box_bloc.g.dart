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
      topLeftRadius: (json['topLeftRadius'] as num?)?.toDouble() ?? 0.0,
      topRightRadius: (json['topRightRadius'] as num?)?.toDouble() ?? 0.0,
      bottomLeftRadius: (json['bottomLeftRadius'] as num?)?.toDouble() ?? 0.0,
      bottomRightRadius: (json['bottomRightRadius'] as num?)?.toDouble() ?? 0.0,
      gradientColors: (json['gradientColors'] as List<dynamic>?)
              ?.map(
                  (e) => GradientColorModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [
            GradientColorModel(id: 0, color: 4278267456, value: 0),
            GradientColorModel(id: 1, color: 4278422668, value: 1)
          ],
      isGradientEnabled: json['isGradientEnabled'] as bool? ?? false,
      isLinearGradient: json['isLinearGradient'] as bool? ?? false,
      isRadialGradient: json['isRadialGradient'] as bool? ?? false,
      beginLinearGradient: json['beginLinearGradient'] == null
          ? const GradientDirectionModel(
              name: 'Top Right', aligmentX: -1.0, aligmentY: -1.0)
          : GradientDirectionModel.fromJson(
              json['beginLinearGradient'] as Map<String, dynamic>),
      endLinearGradient: json['endLinearGradient'] == null
          ? const GradientDirectionModel(
              name: 'Bottom Right', aligmentX: 1.0, aligmentY: 1.0)
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
      'topLeftRadius': instance.topLeftRadius,
      'topRightRadius': instance.topRightRadius,
      'bottomLeftRadius': instance.bottomLeftRadius,
      'bottomRightRadius': instance.bottomRightRadius,
      'gradientColors': instance.gradientColors.map((e) => e.toJson()).toList(),
      'isGradientEnabled': instance.isGradientEnabled,
      'isLinearGradient': instance.isLinearGradient,
      'isRadialGradient': instance.isRadialGradient,
      'beginLinearGradient': instance.beginLinearGradient.toJson(),
      'endLinearGradient': instance.endLinearGradient.toJson(),
      'centerRadiusGradient': instance.centerRadiusGradient.toJson(),
    };
