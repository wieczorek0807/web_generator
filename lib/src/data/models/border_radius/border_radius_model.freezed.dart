// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'border_radius_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BorderRadiusModel _$BorderRadiusModelFromJson(Map<String, dynamic> json) {
  return _BorderRadiusModel.fromJson(json);
}

/// @nodoc
mixin _$BorderRadiusModel {
  double get topLeftRadius => throw _privateConstructorUsedError;
  double get topRightRadius => throw _privateConstructorUsedError;
  double get bottomLeftRadius => throw _privateConstructorUsedError;
  double get bottomRightRadius => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BorderRadiusModelCopyWith<BorderRadiusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BorderRadiusModelCopyWith<$Res> {
  factory $BorderRadiusModelCopyWith(
          BorderRadiusModel value, $Res Function(BorderRadiusModel) then) =
      _$BorderRadiusModelCopyWithImpl<$Res, BorderRadiusModel>;
  @useResult
  $Res call(
      {double topLeftRadius,
      double topRightRadius,
      double bottomLeftRadius,
      double bottomRightRadius});
}

/// @nodoc
class _$BorderRadiusModelCopyWithImpl<$Res, $Val extends BorderRadiusModel>
    implements $BorderRadiusModelCopyWith<$Res> {
  _$BorderRadiusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topLeftRadius = null,
    Object? topRightRadius = null,
    Object? bottomLeftRadius = null,
    Object? bottomRightRadius = null,
  }) {
    return _then(_value.copyWith(
      topLeftRadius: null == topLeftRadius
          ? _value.topLeftRadius
          : topLeftRadius // ignore: cast_nullable_to_non_nullable
              as double,
      topRightRadius: null == topRightRadius
          ? _value.topRightRadius
          : topRightRadius // ignore: cast_nullable_to_non_nullable
              as double,
      bottomLeftRadius: null == bottomLeftRadius
          ? _value.bottomLeftRadius
          : bottomLeftRadius // ignore: cast_nullable_to_non_nullable
              as double,
      bottomRightRadius: null == bottomRightRadius
          ? _value.bottomRightRadius
          : bottomRightRadius // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BorderRadiusModelCopyWith<$Res>
    implements $BorderRadiusModelCopyWith<$Res> {
  factory _$$_BorderRadiusModelCopyWith(_$_BorderRadiusModel value,
          $Res Function(_$_BorderRadiusModel) then) =
      __$$_BorderRadiusModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double topLeftRadius,
      double topRightRadius,
      double bottomLeftRadius,
      double bottomRightRadius});
}

/// @nodoc
class __$$_BorderRadiusModelCopyWithImpl<$Res>
    extends _$BorderRadiusModelCopyWithImpl<$Res, _$_BorderRadiusModel>
    implements _$$_BorderRadiusModelCopyWith<$Res> {
  __$$_BorderRadiusModelCopyWithImpl(
      _$_BorderRadiusModel _value, $Res Function(_$_BorderRadiusModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topLeftRadius = null,
    Object? topRightRadius = null,
    Object? bottomLeftRadius = null,
    Object? bottomRightRadius = null,
  }) {
    return _then(_$_BorderRadiusModel(
      topLeftRadius: null == topLeftRadius
          ? _value.topLeftRadius
          : topLeftRadius // ignore: cast_nullable_to_non_nullable
              as double,
      topRightRadius: null == topRightRadius
          ? _value.topRightRadius
          : topRightRadius // ignore: cast_nullable_to_non_nullable
              as double,
      bottomLeftRadius: null == bottomLeftRadius
          ? _value.bottomLeftRadius
          : bottomLeftRadius // ignore: cast_nullable_to_non_nullable
              as double,
      bottomRightRadius: null == bottomRightRadius
          ? _value.bottomRightRadius
          : bottomRightRadius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BorderRadiusModel implements _BorderRadiusModel {
  const _$_BorderRadiusModel(
      {required this.topLeftRadius,
      required this.topRightRadius,
      required this.bottomLeftRadius,
      required this.bottomRightRadius});

  factory _$_BorderRadiusModel.fromJson(Map<String, dynamic> json) =>
      _$$_BorderRadiusModelFromJson(json);

  @override
  final double topLeftRadius;
  @override
  final double topRightRadius;
  @override
  final double bottomLeftRadius;
  @override
  final double bottomRightRadius;

  @override
  String toString() {
    return 'BorderRadiusModel(topLeftRadius: $topLeftRadius, topRightRadius: $topRightRadius, bottomLeftRadius: $bottomLeftRadius, bottomRightRadius: $bottomRightRadius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BorderRadiusModel &&
            (identical(other.topLeftRadius, topLeftRadius) ||
                other.topLeftRadius == topLeftRadius) &&
            (identical(other.topRightRadius, topRightRadius) ||
                other.topRightRadius == topRightRadius) &&
            (identical(other.bottomLeftRadius, bottomLeftRadius) ||
                other.bottomLeftRadius == bottomLeftRadius) &&
            (identical(other.bottomRightRadius, bottomRightRadius) ||
                other.bottomRightRadius == bottomRightRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, topLeftRadius, topRightRadius,
      bottomLeftRadius, bottomRightRadius);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BorderRadiusModelCopyWith<_$_BorderRadiusModel> get copyWith =>
      __$$_BorderRadiusModelCopyWithImpl<_$_BorderRadiusModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BorderRadiusModelToJson(
      this,
    );
  }
}

abstract class _BorderRadiusModel implements BorderRadiusModel {
  const factory _BorderRadiusModel(
      {required final double topLeftRadius,
      required final double topRightRadius,
      required final double bottomLeftRadius,
      required final double bottomRightRadius}) = _$_BorderRadiusModel;

  factory _BorderRadiusModel.fromJson(Map<String, dynamic> json) =
      _$_BorderRadiusModel.fromJson;

  @override
  double get topLeftRadius;
  @override
  double get topRightRadius;
  @override
  double get bottomLeftRadius;
  @override
  double get bottomRightRadius;
  @override
  @JsonKey(ignore: true)
  _$$_BorderRadiusModelCopyWith<_$_BorderRadiusModel> get copyWith =>
      throw _privateConstructorUsedError;
}
