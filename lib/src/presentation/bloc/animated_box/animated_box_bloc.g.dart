// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animated_box_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimatedBoxState _$$_AnimatedBoxStateFromJson(Map<String, dynamic> json) =>
    _$_AnimatedBoxState(
      offset: AnimatedBoxOffsetEntity.fromJson(
          json['offset'] as Map<String, dynamic>),
      boxWidth: (json['boxWidth'] as num).toDouble(),
      boxHeight: (json['boxHeight'] as num).toDouble(),
      shadowColor:
          const ColorJsonConverter().fromJson(json['shadowColor'] as int),
      animatedBoxColor:
          const ColorJsonConverter().fromJson(json['animatedBoxColor'] as int),
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
      'offset': instance.offset.toJson(),
      'boxWidth': instance.boxWidth,
      'boxHeight': instance.boxHeight,
      'shadowColor': const ColorJsonConverter().toJson(instance.shadowColor),
      'animatedBoxColor':
          const ColorJsonConverter().toJson(instance.animatedBoxColor),
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
