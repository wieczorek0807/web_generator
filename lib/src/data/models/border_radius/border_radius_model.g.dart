// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'border_radius_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BorderRadiusModel _$$_BorderRadiusModelFromJson(Map<String, dynamic> json) =>
    _$_BorderRadiusModel(
      topLeftRadius: (json['topLeftRadius'] as num).toDouble(),
      topRightRadius: (json['topRightRadius'] as num).toDouble(),
      bottomLeftRadius: (json['bottomLeftRadius'] as num).toDouble(),
      bottomRightRadius: (json['bottomRightRadius'] as num).toDouble(),
    );

Map<String, dynamic> _$$_BorderRadiusModelToJson(
        _$_BorderRadiusModel instance) =>
    <String, dynamic>{
      'topLeftRadius': instance.topLeftRadius,
      'topRightRadius': instance.topRightRadius,
      'bottomLeftRadius': instance.bottomLeftRadius,
      'bottomRightRadius': instance.bottomRightRadius,
    };
