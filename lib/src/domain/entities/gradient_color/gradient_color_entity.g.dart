// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gradient_color_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GradientColorEntity _$$_GradientColorEntityFromJson(
        Map<String, dynamic> json) =>
    _$_GradientColorEntity(
      id: json['id'] as int,
      color: const ColorJsonConverter().fromJson(json['color'] as int),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_GradientColorEntityToJson(
        _$_GradientColorEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'color': const ColorJsonConverter().toJson(instance.color),
      'value': instance.value,
    };
