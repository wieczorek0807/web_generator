// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gradient_direction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GradientDirectionModel _$GradientDirectionModelFromJson(
    Map<String, dynamic> json) {
  return _GradientDirectionModel.fromJson(json);
}

/// @nodoc
mixin _$GradientDirectionModel {
  String get name => throw _privateConstructorUsedError;
  double get aligmentX => throw _privateConstructorUsedError;
  double get aligmentY => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GradientDirectionModelCopyWith<GradientDirectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradientDirectionModelCopyWith<$Res> {
  factory $GradientDirectionModelCopyWith(GradientDirectionModel value,
          $Res Function(GradientDirectionModel) then) =
      _$GradientDirectionModelCopyWithImpl<$Res, GradientDirectionModel>;
  @useResult
  $Res call({String name, double aligmentX, double aligmentY});
}

/// @nodoc
class _$GradientDirectionModelCopyWithImpl<$Res,
        $Val extends GradientDirectionModel>
    implements $GradientDirectionModelCopyWith<$Res> {
  _$GradientDirectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? aligmentX = null,
    Object? aligmentY = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      aligmentX: null == aligmentX
          ? _value.aligmentX
          : aligmentX // ignore: cast_nullable_to_non_nullable
              as double,
      aligmentY: null == aligmentY
          ? _value.aligmentY
          : aligmentY // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GradientDirectionModelCopyWith<$Res>
    implements $GradientDirectionModelCopyWith<$Res> {
  factory _$$_GradientDirectionModelCopyWith(_$_GradientDirectionModel value,
          $Res Function(_$_GradientDirectionModel) then) =
      __$$_GradientDirectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double aligmentX, double aligmentY});
}

/// @nodoc
class __$$_GradientDirectionModelCopyWithImpl<$Res>
    extends _$GradientDirectionModelCopyWithImpl<$Res,
        _$_GradientDirectionModel>
    implements _$$_GradientDirectionModelCopyWith<$Res> {
  __$$_GradientDirectionModelCopyWithImpl(_$_GradientDirectionModel _value,
      $Res Function(_$_GradientDirectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? aligmentX = null,
    Object? aligmentY = null,
  }) {
    return _then(_$_GradientDirectionModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      aligmentX: null == aligmentX
          ? _value.aligmentX
          : aligmentX // ignore: cast_nullable_to_non_nullable
              as double,
      aligmentY: null == aligmentY
          ? _value.aligmentY
          : aligmentY // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GradientDirectionModel extends _GradientDirectionModel {
  const _$_GradientDirectionModel(
      {required this.name, required this.aligmentX, required this.aligmentY})
      : super._();

  factory _$_GradientDirectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_GradientDirectionModelFromJson(json);

  @override
  final String name;
  @override
  final double aligmentX;
  @override
  final double aligmentY;

  @override
  String toString() {
    return 'GradientDirectionModel(name: $name, aligmentX: $aligmentX, aligmentY: $aligmentY)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GradientDirectionModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.aligmentX, aligmentX) ||
                other.aligmentX == aligmentX) &&
            (identical(other.aligmentY, aligmentY) ||
                other.aligmentY == aligmentY));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, aligmentX, aligmentY);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GradientDirectionModelCopyWith<_$_GradientDirectionModel> get copyWith =>
      __$$_GradientDirectionModelCopyWithImpl<_$_GradientDirectionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GradientDirectionModelToJson(
      this,
    );
  }
}

abstract class _GradientDirectionModel extends GradientDirectionModel {
  const factory _GradientDirectionModel(
      {required final String name,
      required final double aligmentX,
      required final double aligmentY}) = _$_GradientDirectionModel;
  const _GradientDirectionModel._() : super._();

  factory _GradientDirectionModel.fromJson(Map<String, dynamic> json) =
      _$_GradientDirectionModel.fromJson;

  @override
  String get name;
  @override
  double get aligmentX;
  @override
  double get aligmentY;
  @override
  @JsonKey(ignore: true)
  _$$_GradientDirectionModelCopyWith<_$_GradientDirectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
