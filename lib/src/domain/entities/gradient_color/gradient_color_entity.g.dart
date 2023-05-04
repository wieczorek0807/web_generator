// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gradient_color_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GradientColorEntity _$$_GradientColorEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GradientColorEntity(
      id: json['id'] as int,
      color: json['color'],
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_GradientColorEntityToJson(
        _$_GradientColorEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'color': instance.color,
      'value': instance.value,
    };
