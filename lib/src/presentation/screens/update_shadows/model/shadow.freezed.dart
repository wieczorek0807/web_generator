// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shadow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Shadow {
  @HiveField(0)
  double get offsetDx => throw _privateConstructorUsedError;
  @HiveField(1)
  double get offsetDy => throw _privateConstructorUsedError;
  @HiveField(2)
  double get spreadRadius => throw _privateConstructorUsedError;
  @HiveField(3)
  double get blurRadius => throw _privateConstructorUsedError;
  @HiveField(4)
  int get shadowColor => throw _privateConstructorUsedError;
  @HiveField(5)
  int get animatedBoxColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShadowCopyWith<Shadow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShadowCopyWith<$Res> {
  factory $ShadowCopyWith(Shadow value, $Res Function(Shadow) then) =
      _$ShadowCopyWithImpl<$Res, Shadow>;
  @useResult
  $Res call(
      {@HiveField(0) double offsetDx,
      @HiveField(1) double offsetDy,
      @HiveField(2) double spreadRadius,
      @HiveField(3) double blurRadius,
      @HiveField(4) int shadowColor,
      @HiveField(5) int animatedBoxColor});
}

/// @nodoc
class _$ShadowCopyWithImpl<$Res, $Val extends Shadow>
    implements $ShadowCopyWith<$Res> {
  _$ShadowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offsetDx = null,
    Object? offsetDy = null,
    Object? spreadRadius = null,
    Object? blurRadius = null,
    Object? shadowColor = null,
    Object? animatedBoxColor = null,
  }) {
    return _then(_value.copyWith(
      offsetDx: null == offsetDx
          ? _value.offsetDx
          : offsetDx // ignore: cast_nullable_to_non_nullable
              as double,
      offsetDy: null == offsetDy
          ? _value.offsetDy
          : offsetDy // ignore: cast_nullable_to_non_nullable
              as double,
      spreadRadius: null == spreadRadius
          ? _value.spreadRadius
          : spreadRadius // ignore: cast_nullable_to_non_nullable
              as double,
      blurRadius: null == blurRadius
          ? _value.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as double,
      shadowColor: null == shadowColor
          ? _value.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as int,
      animatedBoxColor: null == animatedBoxColor
          ? _value.animatedBoxColor
          : animatedBoxColor // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShadowCopyWith<$Res> implements $ShadowCopyWith<$Res> {
  factory _$$_ShadowCopyWith(_$_Shadow value, $Res Function(_$_Shadow) then) =
      __$$_ShadowCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) double offsetDx,
      @HiveField(1) double offsetDy,
      @HiveField(2) double spreadRadius,
      @HiveField(3) double blurRadius,
      @HiveField(4) int shadowColor,
      @HiveField(5) int animatedBoxColor});
}

/// @nodoc
class __$$_ShadowCopyWithImpl<$Res>
    extends _$ShadowCopyWithImpl<$Res, _$_Shadow>
    implements _$$_ShadowCopyWith<$Res> {
  __$$_ShadowCopyWithImpl(_$_Shadow _value, $Res Function(_$_Shadow) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offsetDx = null,
    Object? offsetDy = null,
    Object? spreadRadius = null,
    Object? blurRadius = null,
    Object? shadowColor = null,
    Object? animatedBoxColor = null,
  }) {
    return _then(_$_Shadow(
      offsetDx: null == offsetDx
          ? _value.offsetDx
          : offsetDx // ignore: cast_nullable_to_non_nullable
              as double,
      offsetDy: null == offsetDy
          ? _value.offsetDy
          : offsetDy // ignore: cast_nullable_to_non_nullable
              as double,
      spreadRadius: null == spreadRadius
          ? _value.spreadRadius
          : spreadRadius // ignore: cast_nullable_to_non_nullable
              as double,
      blurRadius: null == blurRadius
          ? _value.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as double,
      shadowColor: null == shadowColor
          ? _value.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as int,
      animatedBoxColor: null == animatedBoxColor
          ? _value.animatedBoxColor
          : animatedBoxColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 1)
class _$_Shadow implements _Shadow {
  const _$_Shadow(
      {@HiveField(0) required this.offsetDx,
      @HiveField(1) required this.offsetDy,
      @HiveField(2) required this.spreadRadius,
      @HiveField(3) required this.blurRadius,
      @HiveField(4) required this.shadowColor,
      @HiveField(5) required this.animatedBoxColor});

  @override
  @HiveField(0)
  final double offsetDx;
  @override
  @HiveField(1)
  final double offsetDy;
  @override
  @HiveField(2)
  final double spreadRadius;
  @override
  @HiveField(3)
  final double blurRadius;
  @override
  @HiveField(4)
  final int shadowColor;
  @override
  @HiveField(5)
  final int animatedBoxColor;

  @override
  String toString() {
    return 'Shadow(offsetDx: $offsetDx, offsetDy: $offsetDy, spreadRadius: $spreadRadius, blurRadius: $blurRadius, shadowColor: $shadowColor, animatedBoxColor: $animatedBoxColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Shadow &&
            (identical(other.offsetDx, offsetDx) ||
                other.offsetDx == offsetDx) &&
            (identical(other.offsetDy, offsetDy) ||
                other.offsetDy == offsetDy) &&
            (identical(other.spreadRadius, spreadRadius) ||
                other.spreadRadius == spreadRadius) &&
            (identical(other.blurRadius, blurRadius) ||
                other.blurRadius == blurRadius) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.animatedBoxColor, animatedBoxColor) ||
                other.animatedBoxColor == animatedBoxColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offsetDx, offsetDy, spreadRadius,
      blurRadius, shadowColor, animatedBoxColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShadowCopyWith<_$_Shadow> get copyWith =>
      __$$_ShadowCopyWithImpl<_$_Shadow>(this, _$identity);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

abstract class _Shadow implements Shadow {
  const factory _Shadow(
      {@HiveField(0) required final double offsetDx,
      @HiveField(1) required final double offsetDy,
      @HiveField(2) required final double spreadRadius,
      @HiveField(3) required final double blurRadius,
      @HiveField(4) required final int shadowColor,
      @HiveField(5) required final int animatedBoxColor}) = _$_Shadow;

  @override
  @HiveField(0)
  double get offsetDx;
  @override
  @HiveField(1)
  double get offsetDy;
  @override
  @HiveField(2)
  double get spreadRadius;
  @override
  @HiveField(3)
  double get blurRadius;
  @override
  @HiveField(4)
  int get shadowColor;
  @override
  @HiveField(5)
  int get animatedBoxColor;
  @override
  @JsonKey(ignore: true)
  _$$_ShadowCopyWith<_$_Shadow> get copyWith =>
      throw _privateConstructorUsedError;
}
