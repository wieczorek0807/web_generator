import 'dart:ui';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:box_shadow_generator/src/core/extension/offset.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/values/colors.dart';
import '../../../domain/entities/gradient_box_entity.dart';
import '../../../domain/entities/gradient_direction_entity.dart';

part 'animated_box_event.dart';
part 'animated_box_state.dart';
part 'animated_box_bloc.freezed.dart';

class AnimatedBoxBloc extends Bloc<AnimatedBoxEvent, AnimatedBoxState> {
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
            emit(state.copyWith(offset: state.offset.copyWith(dx: v))),
        updateOffsetY: (v) =>
            emit(state.copyWith(offset: state.offset.copyWith(dy: v))),
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
            _updateGradientColor(color: newColor, index: id),
        updateGradientValue: (id, value) =>
            _updateGradientValue(index: id, value: value),
        changeGradientState: (v) => _changeGradientState(v),
        changeGradientBeginValue: (v) =>
            emit(state.copyWith(beginLinearGradient: v)),
        changeGradientEndValue: (v) =>
            emit(state.copyWith(endLinearGradient: v)),
        changeGradientCenterValue: (v) =>
            emit(state.copyWith(centerRadiusGradient: v)),
      );
  void _addGradientColor() {
    if (state.gradientColors.length < 6) {
      final newColor =
          GradientColorEntity(AppColors.five, 0, state.gradientColors.length);
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

  void _updateGradientColor({required Color color, required int index}) {
    GradientColorEntity colorToCHange = state.gradientColors[index];
    GradientColorEntity newColor =
        GradientColorEntity(color, colorToCHange.value, colorToCHange.id);
    List<GradientColorEntity> colorsInState = [...state.gradientColors];
    colorsInState[index] = newColor;
    emit(state.copyWith(gradientColors: colorsInState));
  }

  void _updateGradientValue({required double value, required int index}) {
    GradientColorEntity colorToCHange = state.gradientColors[index];
    GradientColorEntity newColor =
        GradientColorEntity(colorToCHange.color, value, colorToCHange.id);
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

    colorsInState
        .add(GradientColorEntity(firstElement.color, 0, firstElement.id));

    gradientColorEnitiyList.forEach((element) {
      colorsInState.add(GradientColorEntity(
          element.color, newvalue * element.id, element.id));
    });
    colorsInState
        .add(GradientColorEntity(lastElement.color, 1, lastElement.id));

    return colorsInState;
  }
}

// bloc initial state
final AnimatedBoxState _initail = AnimatedBoxState(
    offset: Offset.zero,
    boxWidth: 350.0,
    boxHeight: 350.0,
    shadowColor: AppColors.shadow,
    animatedBoxColor: Colors.grey.shade200,
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
      const GradientColorEntity(AppColors.primary, 0, 0),
      const GradientColorEntity(AppColors.third, 1, 1),
    ],
    beginLinearGradient: allGradientDirecitons[1],
    endLinearGradient: allGradientDirecitons[6],
    centerRadiusGradient: allGradientDirecitons[5]);
