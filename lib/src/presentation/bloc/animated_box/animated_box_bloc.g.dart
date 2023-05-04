// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animated_box_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimatedBoxState _$$_AnimatedBoxStateFromJson(Map<String, dynamic> json) =>
    _$_AnimatedBoxState(
      offset: json['offset'],
      boxWidth: (json['boxWidth'] as num).toDouble(),
      boxHeight: (json['boxHeight'] as num).toDouble(),
      shadowColor: json['shadowColor'],
      animatedBoxColor: json['animatedBoxColor'],
      blurRadius: (json['blurRadius'] as num).toDouble(),
      spreadRadius: (json['spreadRadius'] as num).toDouble(),
      topLeftRadius: (json['topLeftRadius'] as num).toDouble(),
      topRightRadius: (json['topRightRadius'] as num).toDouble(),
      bottomLeftRadius: (json['bottomLeftRadius'] as num).toDouble(),
      bottomRightRadius: (json['bottomRightRadius'] as num).toDouble(),
      gradientColors: (json['gradientColors'] as List<dynamic>)
          .map((e) => GradientColorEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      isGradientEnabled: json['isGradientEnabled'] as bool,
      isLinearGradient: json['isLinearGradient'] as bool,
      isRadialGradient: json['isRadialGradient'] as bool,
      beginLinearGradient: GradientDirectionEntity.fromJson(
          json['beginLinearGradient'] as Map<String, dynamic>),
      endLinearGradient: GradientDirectionEntity.fromJson(
          json['endLinearGradient'] as Map<String, dynamic>),
      centerRadiusGradient: GradientDirectionEntity.fromJson(
          json['centerRadiusGradient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnimatedBoxStateToJson(_$_AnimatedBoxState instance) =>
    <String, dynamic>{
      'offset': instance.offset,
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
      'gradientColors': instance.gradientColors,
      'isGradientEnabled': instance.isGradientEnabled,
      'isLinearGradient': instance.isLinearGradient,
      'isRadialGradient': instance.isRadialGradient,
      'beginLinearGradient': instance.beginLinearGradient,
      'endLinearGradient': instance.endLinearGradient,
      'centerRadiusGradient': instance.centerRadiusGradient,
    };
