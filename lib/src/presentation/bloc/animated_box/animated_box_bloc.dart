// ignore: depend_on_referenced_packages
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:flutter/foundation.dart';

import '../../../core/values/colors.dart';
import '../../../domain/entities/animated_box_offset/animated_box_offset_entity.dart';
import '../../../domain/entities/gradient_color/gradient_color_entity.dart';
import '../../../domain/entities/gradient_direction/gradient_direction_entity.dart';

part 'animated_box_event.dart';
part 'animated_box_state.dart';
part 'animated_box_bloc.freezed.dart';
part 'animated_box_bloc.g.dart';

class AnimatedBoxBloc extends HydratedBloc<AnimatedBoxEvent, AnimatedBoxState> {
  AnimatedBoxBloc() : super(_initail) {
    on<AnimatedBoxEvent>((event, emit) {
      _updateValues(event);
    });
  }

  void _updateValues(AnimatedBoxEvent event) => event.maybeWhen(
        orElse: () => null,
        undoChanges: () => emit(_initail),
        updateSpread: (v) => emit(state.copyWith(spreadRadius: v)),
        updateBlur: (v) => emit(state.copyWith(blurRadius: v)),
        updateOffsetX: (v) =>
            emit(state.copyWith(offset: state.offset.copyWith(offsetDx: v))),
        updateOffsetY: (v) =>
            emit(state.copyWith(offset: state.offset.copyWith(offsetDy: v))),
        updateShadowColor: (v) => emit(state.copyWith(shadowColor: v)),
        updateAnimatedBoxColor: (v) =>
            emit(state.copyWith(animatedBoxColor: v)),
        updateTopLeftRadius: (v) => emit(state.copyWith(topLeftRadius: v)),
        updateTopRightRadius: (v) => emit(state.copyWith(topRightRadius: v)),
        updateBottomLeftRadius: (v) =>
            emit(state.copyWith(bottomLeftRadius: v)),
        updateBottomRightRadius: (v) =>
            emit(state.copyWith(bottomRightRadius: v)),
        updateBoxHeight: (v) => emit(state.copyWith(boxHeight: v)),
        updateBoxWidth: (v) => emit(state.copyWith(boxWidth: v)),
        addGradientColor: _addGradientColor,
        removeGradientColor: _removeGradientColor,
        updateGradientColor: (id, newColor) =>
            _updateGradient(color: newColor, index: id),
        updateGradientValue: (id, value) =>
            _updateGradient(index: id, value: value),
        changeGradientState: (v) => _changeGradientState(v),
        changeGradientBeginValue: (v) =>
            emit(state.copyWith(beginLinearGradient: v)),
        changeGradientEndValue: (v) =>
            emit(state.copyWith(endLinearGradient: v)),
        changeGradientCenterValue: (v) =>
            emit(state.copyWith(centerRadiusGradient: v)),
      );

  // Gradient functions

  void _addGradientColor() {
    if (state.gradientColors.length < 6) {
      final newColor = GradientColorEntity(
          id: state.gradientColors.length,
          color: AppColors.tangerine,
          value: 0);
      final colors = List.of([...state.gradientColors, newColor]);

      List<GradientColorEntity> newState =
          _setValueWhenAddCollor(gradientColorEnitiyList: colors);
      emit(state.copyWith(gradientColors: newState));
    }
  }

  void _removeGradientColor() {
    if (state.gradientColors.length > 2) {
      List<GradientColorEntity> colorsInState = [...state.gradientColors];
      colorsInState.removeLast();

      List<GradientColorEntity> newState =
          _setValueWhenAddCollor(gradientColorEnitiyList: colorsInState);

      emit(state.copyWith(gradientColors: newState));
    }
  }

  void _changeGradientState(int value) {
    switch (value) {
      case 0:
        emit(state.copyWith(isGradientEnabled: false));
        break;

      case 1:
        emit(state.copyWith(
            isGradientEnabled: true,
            isLinearGradient: true,
            isRadialGradient: false));
        break;

      case 2:
        emit(state.copyWith(
            isGradientEnabled: true,
            isLinearGradient: false,
            isRadialGradient: true));
        break;
    }
  }

  void _updateGradient({Color? color, required int index, double? value}) {
    GradientColorEntity colorToChange = state.gradientColors[index];
    GradientColorEntity newColor = GradientColorEntity(
        id: colorToChange.id,
        color: color ??= colorToChange.color,
        value: value ?? colorToChange.value);
    List<GradientColorEntity> colorsInState = [...state.gradientColors];
    colorsInState[index] = newColor;
    emit(state.copyWith(gradientColors: colorsInState));
  }

  List<GradientColorEntity> _setValueWhenAddCollor(
      {required List<GradientColorEntity> gradientColorEnitiyList}) {
    double newvalue = 1 / (gradientColorEnitiyList.length - 1);
    List<GradientColorEntity> colorsInState = [];
    GradientColorEntity firstElement = gradientColorEnitiyList.removeAt(0);
    GradientColorEntity lastElement = gradientColorEnitiyList.removeLast();

    colorsInState.add(GradientColorEntity(
        id: firstElement.id, color: firstElement.color, value: 0));
    for (var element in gradientColorEnitiyList) {
      colorsInState.add(GradientColorEntity(
          id: element.id, color: element.color, value: newvalue * element.id));
    }
    colorsInState.add(GradientColorEntity(
        id: lastElement.id, color: lastElement.color, value: 1));

    return colorsInState;
  }

  @override
  AnimatedBoxState? fromJson(Map<String, dynamic> json) {
    try {
      return AnimatedBoxState.fromJson(json);
    } catch (e) {
      return _initail;
    }
  }

  @override
  Map<String, dynamic>? toJson(AnimatedBoxState state) => state.toJson();
}

// bloc initial state
final AnimatedBoxState _initail = AnimatedBoxState(
    offset: const AnimatedBoxOffsetEntity(offsetDx: 0, offsetDy: 0),
    boxWidth: 350.0,
    boxHeight: 350.0,
    shadowColor: AppColors.shadow,
    animatedBoxColor: AppColors.box,
    blurRadius: 0.0,
    spreadRadius: 0.0,
    topLeftRadius: 0.0,
    topRightRadius: 0.0,
    bottomLeftRadius: 0.0,
    bottomRightRadius: 0.0,
    isGradientEnabled: false,
    isLinearGradient: false,
    isRadialGradient: false,
    gradientColors: [
      const GradientColorEntity(id: 0, color: AppColors.prussianBlue, value: 0),
      const GradientColorEntity(id: 1, color: AppColors.darkCyan, value: 1)
    ],
    beginLinearGradient: allGradientDirecitons[1],
    endLinearGradient: allGradientDirecitons[6],
    centerRadiusGradient: allGradientDirecitons[5]);
