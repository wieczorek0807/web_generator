// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gradient_direction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GradientDirectionEntity _$GradientDirectionEntityFromJson(
    Map<String, dynamic> json) {
  return _GradientDirectionEntity.fromJson(json);
}

/// @nodoc
mixin _$GradientDirectionEntity {
  String get name => throw _privateConstructorUsedError;
  double get aligmentX => throw _privateConstructorUsedError;
  double get aligmentY => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GradientDirectionEntityCopyWith<GradientDirectionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradientDirectionEntityCopyWith<$Res> {
  factory $GradientDirectionEntityCopyWith(GradientDirectionEntity value,
          $Res Function(GradientDirectionEntity) then) =
      _$GradientDirectionEntityCopyWithImpl<$Res, GradientDirectionEntity>;
  @useResult
  $Res call({String name, double aligmentX, double aligmentY});
}

/// @nodoc
class _$GradientDirectionEntityCopyWithImpl<$Res,
        $Val extends GradientDirectionEntity>
    implements $GradientDirectionEntityCopyWith<$Res> {
  _$GradientDirectionEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_GradientDirectionEntityCopyWith<$Res>
    implements $GradientDirectionEntityCopyWith<$Res> {
  factory _$$_GradientDirectionEntityCopyWith(_$_GradientDirectionEntity value,
          $Res Function(_$_GradientDirectionEntity) then) =
      __$$_GradientDirectionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double aligmentX, double aligmentY});
}

/// @nodoc
class __$$_GradientDirectionEntityCopyWithImpl<$Res>
    extends _$GradientDirectionEntityCopyWithImpl<$Res,
        _$_GradientDirectionEntity>
    implements _$$_GradientDirectionEntityCopyWith<$Res> {
  __$$_GradientDirectionEntityCopyWithImpl(_$_GradientDirectionEntity _value,
      $Res Function(_$_GradientDirectionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? aligmentX = null,
    Object? aligmentY = null,
  }) {
    return _then(_$_GradientDirectionEntity(
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
class _$_GradientDirectionEntity extends _GradientDirectionEntity {
  const _$_GradientDirectionEntity(
      {required this.name, required this.aligmentX, required this.aligmentY})
      : super._();

  factory _$_GradientDirectionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GradientDirectionEntityFromJson(json);

  @override
  final String name;
  @override
  final double aligmentX;
  @override
  final double aligmentY;

  @override
  String toString() {
    return 'GradientDirectionEntity(name: $name, aligmentX: $aligmentX, aligmentY: $aligmentY)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GradientDirectionEntity &&
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
  _$$_GradientDirectionEntityCopyWith<_$_GradientDirectionEntity>
      get copyWith =>
          __$$_GradientDirectionEntityCopyWithImpl<_$_GradientDirectionEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GradientDirectionEntityToJson(
      this,
    );
  }
}

abstract class _GradientDirectionEntity extends GradientDirectionEntity {
  const factory _GradientDirectionEntity(
      {required final String name,
      required final double aligmentX,
      required final double aligmentY}) = _$_GradientDirectionEntity;
  const _GradientDirectionEntity._() : super._();

  factory _GradientDirectionEntity.fromJson(Map<String, dynamic> json) =
      _$_GradientDirectionEntity.fromJson;

  @override
  String get name;
  @override
  double get aligmentX;
  @override
  double get aligmentY;
  @override
  @JsonKey(ignore: true)
  _$$_GradientDirectionEntityCopyWith<_$_GradientDirectionEntity>
      get copyWith => throw _privateConstructorUsedError;
}
