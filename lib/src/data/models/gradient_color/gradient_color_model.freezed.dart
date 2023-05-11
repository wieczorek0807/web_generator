// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gradient_color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GradientColorModel _$GradientColorModelFromJson(Map<String, dynamic> json) {
  return _GradientColorModel.fromJson(json);
}

/// @nodoc
mixin _$GradientColorModel {
  int get id => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GradientColorModelCopyWith<GradientColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradientColorModelCopyWith<$Res> {
  factory $GradientColorModelCopyWith(
          GradientColorModel value, $Res Function(GradientColorModel) then) =
      _$GradientColorModelCopyWithImpl<$Res, GradientColorModel>;
  @useResult
  $Res call({int id, int color, double value});
}

/// @nodoc
class _$GradientColorModelCopyWithImpl<$Res, $Val extends GradientColorModel>
    implements $GradientColorModelCopyWith<$Res> {
  _$GradientColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? color = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GradientColorModelCopyWith<$Res>
    implements $GradientColorModelCopyWith<$Res> {
  factory _$$_GradientColorModelCopyWith(_$_GradientColorModel value,
          $Res Function(_$_GradientColorModel) then) =
      __$$_GradientColorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int color, double value});
}

/// @nodoc
class __$$_GradientColorModelCopyWithImpl<$Res>
    extends _$GradientColorModelCopyWithImpl<$Res, _$_GradientColorModel>
    implements _$$_GradientColorModelCopyWith<$Res> {
  __$$_GradientColorModelCopyWithImpl(
      _$_GradientColorModel _value, $Res Function(_$_GradientColorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? color = null,
    Object? value = null,
  }) {
    return _then(_$_GradientColorModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GradientColorModel implements _GradientColorModel {
  const _$_GradientColorModel(
      {required this.id, required this.color, required this.value});

  factory _$_GradientColorModel.fromJson(Map<String, dynamic> json) =>
      _$$_GradientColorModelFromJson(json);

  @override
  final int id;
  @override
  final int color;
  @override
  final double value;

  @override
  String toString() {
    return 'GradientColorModel(id: $id, color: $color, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GradientColorModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, color, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GradientColorModelCopyWith<_$_GradientColorModel> get copyWith =>
      __$$_GradientColorModelCopyWithImpl<_$_GradientColorModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GradientColorModelToJson(
      this,
    );
  }
}

abstract class _GradientColorModel implements GradientColorModel {
  const factory _GradientColorModel(
      {required final int id,
      required final int color,
      required final double value}) = _$_GradientColorModel;

  factory _GradientColorModel.fromJson(Map<String, dynamic> json) =
      _$_GradientColorModel.fromJson;

  @override
  int get id;
  @override
  int get color;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_GradientColorModelCopyWith<_$_GradientColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
