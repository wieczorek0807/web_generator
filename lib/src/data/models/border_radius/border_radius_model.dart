import 'package:freezed_annotation/freezed_annotation.dart';

part 'border_radius_model.freezed.dart';
part 'border_radius_model.g.dart';

@freezed
class BorderRadiusModel with _$BorderRadiusModel {
  const factory BorderRadiusModel({
    required double topLeftRadius,
    required double topRightRadius,
    required double bottomLeftRadius,
    required double bottomRightRadius,
  }) = _BorderRadiusModel;

  factory BorderRadiusModel.fromJson(Map<String, Object?> json) => _$BorderRadiusModelFromJson(json);
}
