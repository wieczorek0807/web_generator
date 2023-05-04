// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gradient_direction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GradientDirectionEntity {
  String get name => throw _privateConstructorUsedError;
  AlignmentGeometry get value => throw _privateConstructorUsedError;

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
  $Res call({String name, AlignmentGeometry value});
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
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as AlignmentGeometry,
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
  $Res call({String name, AlignmentGeometry value});
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
    Object? value = null,
  }) {
    return _then(_$_GradientDirectionEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as AlignmentGeometry,
    ));
  }
}

/// @nodoc

class _$_GradientDirectionEntity implements _GradientDirectionEntity {
  const _$_GradientDirectionEntity({required this.name, required this.value});

  @override
  final String name;
  @override
  final AlignmentGeometry value;

  @override
  String toString() {
    return 'GradientDirectionEntity(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GradientDirectionEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GradientDirectionEntityCopyWith<_$_GradientDirectionEntity>
      get copyWith =>
          __$$_GradientDirectionEntityCopyWithImpl<_$_GradientDirectionEntity>(
              this, _$identity);
}

abstract class _GradientDirectionEntity implements GradientDirectionEntity {
  const factory _GradientDirectionEntity(
      {required final String name,
      required final AlignmentGeometry value}) = _$_GradientDirectionEntity;

  @override
  String get name;
  @override
  AlignmentGeometry get value;
  @override
  @JsonKey(ignore: true)
  _$$_GradientDirectionEntityCopyWith<_$_GradientDirectionEntity>
      get copyWith => throw _privateConstructorUsedError;
}
