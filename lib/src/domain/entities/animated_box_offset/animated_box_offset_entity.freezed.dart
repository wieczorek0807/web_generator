// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animated_box_offset_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimatedBoxOffsetEntity _$AnimatedBoxOffsetEntityFromJson(
    Map<String, dynamic> json) {
  return _AnimatedBoxOffsetEntity.fromJson(json);
}

/// @nodoc
mixin _$AnimatedBoxOffsetEntity {
  double get offsetDx => throw _privateConstructorUsedError;
  double get offsetDy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimatedBoxOffsetEntityCopyWith<AnimatedBoxOffsetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimatedBoxOffsetEntityCopyWith<$Res> {
  factory $AnimatedBoxOffsetEntityCopyWith(AnimatedBoxOffsetEntity value,
          $Res Function(AnimatedBoxOffsetEntity) then) =
      _$AnimatedBoxOffsetEntityCopyWithImpl<$Res, AnimatedBoxOffsetEntity>;
  @useResult
  $Res call({double offsetDx, double offsetDy});
}

/// @nodoc
class _$AnimatedBoxOffsetEntityCopyWithImpl<$Res,
        $Val extends AnimatedBoxOffsetEntity>
    implements $AnimatedBoxOffsetEntityCopyWith<$Res> {
  _$AnimatedBoxOffsetEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offsetDx = null,
    Object? offsetDy = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimatedBoxOffsetEntityCopyWith<$Res>
    implements $AnimatedBoxOffsetEntityCopyWith<$Res> {
  factory _$$_AnimatedBoxOffsetEntityCopyWith(_$_AnimatedBoxOffsetEntity value,
          $Res Function(_$_AnimatedBoxOffsetEntity) then) =
      __$$_AnimatedBoxOffsetEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double offsetDx, double offsetDy});
}

/// @nodoc
class __$$_AnimatedBoxOffsetEntityCopyWithImpl<$Res>
    extends _$AnimatedBoxOffsetEntityCopyWithImpl<$Res,
        _$_AnimatedBoxOffsetEntity>
    implements _$$_AnimatedBoxOffsetEntityCopyWith<$Res> {
  __$$_AnimatedBoxOffsetEntityCopyWithImpl(_$_AnimatedBoxOffsetEntity _value,
      $Res Function(_$_AnimatedBoxOffsetEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offsetDx = null,
    Object? offsetDy = null,
  }) {
    return _then(_$_AnimatedBoxOffsetEntity(
      offsetDx: null == offsetDx
          ? _value.offsetDx
          : offsetDx // ignore: cast_nullable_to_non_nullable
              as double,
      offsetDy: null == offsetDy
          ? _value.offsetDy
          : offsetDy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimatedBoxOffsetEntity extends _AnimatedBoxOffsetEntity {
  const _$_AnimatedBoxOffsetEntity(
      {required this.offsetDx, required this.offsetDy})
      : super._();

  factory _$_AnimatedBoxOffsetEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AnimatedBoxOffsetEntityFromJson(json);

  @override
  final double offsetDx;
  @override
  final double offsetDy;

  @override
  String toString() {
    return 'AnimatedBoxOffsetEntity(offsetDx: $offsetDx, offsetDy: $offsetDy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimatedBoxOffsetEntity &&
            (identical(other.offsetDx, offsetDx) ||
                other.offsetDx == offsetDx) &&
            (identical(other.offsetDy, offsetDy) ||
                other.offsetDy == offsetDy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offsetDx, offsetDy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimatedBoxOffsetEntityCopyWith<_$_AnimatedBoxOffsetEntity>
      get copyWith =>
          __$$_AnimatedBoxOffsetEntityCopyWithImpl<_$_AnimatedBoxOffsetEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimatedBoxOffsetEntityToJson(
      this,
    );
  }
}

abstract class _AnimatedBoxOffsetEntity extends AnimatedBoxOffsetEntity {
  const factory _AnimatedBoxOffsetEntity(
      {required final double offsetDx,
      required final double offsetDy}) = _$_AnimatedBoxOffsetEntity;
  const _AnimatedBoxOffsetEntity._() : super._();

  factory _AnimatedBoxOffsetEntity.fromJson(Map<String, dynamic> json) =
      _$_AnimatedBoxOffsetEntity.fromJson;

  @override
  double get offsetDx;
  @override
  double get offsetDy;
  @override
  @JsonKey(ignore: true)
  _$$_AnimatedBoxOffsetEntityCopyWith<_$_AnimatedBoxOffsetEntity>
      get copyWith => throw _privateConstructorUsedError;
}
