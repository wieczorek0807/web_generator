// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gradient_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GradientStateModel _$GradientStateModelFromJson(Map<String, dynamic> json) {
  return _GradientStateModel.fromJson(json);
}

/// @nodoc
mixin _$GradientStateModel {
  bool get isGradientEnabled => throw _privateConstructorUsedError;
  bool get isLinearGradient => throw _privateConstructorUsedError;
  bool get isRadialGradient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GradientStateModelCopyWith<GradientStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradientStateModelCopyWith<$Res> {
  factory $GradientStateModelCopyWith(
          GradientStateModel value, $Res Function(GradientStateModel) then) =
      _$GradientStateModelCopyWithImpl<$Res, GradientStateModel>;
  @useResult
  $Res call(
      {bool isGradientEnabled, bool isLinearGradient, bool isRadialGradient});
}

/// @nodoc
class _$GradientStateModelCopyWithImpl<$Res, $Val extends GradientStateModel>
    implements $GradientStateModelCopyWith<$Res> {
  _$GradientStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGradientEnabled = null,
    Object? isLinearGradient = null,
    Object? isRadialGradient = null,
  }) {
    return _then(_value.copyWith(
      isGradientEnabled: null == isGradientEnabled
          ? _value.isGradientEnabled
          : isGradientEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLinearGradient: null == isLinearGradient
          ? _value.isLinearGradient
          : isLinearGradient // ignore: cast_nullable_to_non_nullable
              as bool,
      isRadialGradient: null == isRadialGradient
          ? _value.isRadialGradient
          : isRadialGradient // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GradientStateModelCopyWith<$Res>
    implements $GradientStateModelCopyWith<$Res> {
  factory _$$_GradientStateModelCopyWith(_$_GradientStateModel value,
          $Res Function(_$_GradientStateModel) then) =
      __$$_GradientStateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isGradientEnabled, bool isLinearGradient, bool isRadialGradient});
}

/// @nodoc
class __$$_GradientStateModelCopyWithImpl<$Res>
    extends _$GradientStateModelCopyWithImpl<$Res, _$_GradientStateModel>
    implements _$$_GradientStateModelCopyWith<$Res> {
  __$$_GradientStateModelCopyWithImpl(
      _$_GradientStateModel _value, $Res Function(_$_GradientStateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGradientEnabled = null,
    Object? isLinearGradient = null,
    Object? isRadialGradient = null,
  }) {
    return _then(_$_GradientStateModel(
      isGradientEnabled: null == isGradientEnabled
          ? _value.isGradientEnabled
          : isGradientEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLinearGradient: null == isLinearGradient
          ? _value.isLinearGradient
          : isLinearGradient // ignore: cast_nullable_to_non_nullable
              as bool,
      isRadialGradient: null == isRadialGradient
          ? _value.isRadialGradient
          : isRadialGradient // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GradientStateModel implements _GradientStateModel {
  const _$_GradientStateModel(
      {required this.isGradientEnabled,
      required this.isLinearGradient,
      required this.isRadialGradient});

  factory _$_GradientStateModel.fromJson(Map<String, dynamic> json) =>
      _$$_GradientStateModelFromJson(json);

  @override
  final bool isGradientEnabled;
  @override
  final bool isLinearGradient;
  @override
  final bool isRadialGradient;

  @override
  String toString() {
    return 'GradientStateModel(isGradientEnabled: $isGradientEnabled, isLinearGradient: $isLinearGradient, isRadialGradient: $isRadialGradient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GradientStateModel &&
            (identical(other.isGradientEnabled, isGradientEnabled) ||
                other.isGradientEnabled == isGradientEnabled) &&
            (identical(other.isLinearGradient, isLinearGradient) ||
                other.isLinearGradient == isLinearGradient) &&
            (identical(other.isRadialGradient, isRadialGradient) ||
                other.isRadialGradient == isRadialGradient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isGradientEnabled, isLinearGradient, isRadialGradient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GradientStateModelCopyWith<_$_GradientStateModel> get copyWith =>
      __$$_GradientStateModelCopyWithImpl<_$_GradientStateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GradientStateModelToJson(
      this,
    );
  }
}

abstract class _GradientStateModel implements GradientStateModel {
  const factory _GradientStateModel(
      {required final bool isGradientEnabled,
      required final bool isLinearGradient,
      required final bool isRadialGradient}) = _$_GradientStateModel;

  factory _GradientStateModel.fromJson(Map<String, dynamic> json) =
      _$_GradientStateModel.fromJson;

  @override
  bool get isGradientEnabled;
  @override
  bool get isLinearGradient;
  @override
  bool get isRadialGradient;
  @override
  @JsonKey(ignore: true)
  _$$_GradientStateModelCopyWith<_$_GradientStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
