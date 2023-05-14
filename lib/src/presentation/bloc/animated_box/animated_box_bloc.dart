// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../core/values/colors.dart';
import '../../../data/models/gradient_color/gradient_color_model.dart';
import '../../../data/models/gradient_direction/gradient_direction_model.dart';

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
        updateOffsetX: (v) => emit(state.copyWith(offsetDx: v)),
        updateOffsetY: (v) => emit(state.copyWith(offsetDy: v)),
        updateShadowColor: (v) => emit(state.copyWith(shadowColor: v.value)),
        updateAnimatedBoxColor: (v) =>
            emit(state.copyWith(animatedBoxColor: v.value)),
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
            _updateGradient(color: newColor.value, index: id),
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
      final newColor = GradientColorModel(
          id: state.gradientColors.length,
          color: AppColors.tangerine.value,
          value: 0);
      final colors = List.of([...state.gradientColors, newColor]);

      List<GradientColorModel> newState =
          _setValueWhenAddCollor(gradientColorEnitiyList: colors);
      emit(state.copyWith(gradientColors: newState));
    }
  }

  void _removeGradientColor() {
    if (state.gradientColors.length > 2) {
      List<GradientColorModel> colorsInState = [...state.gradientColors];
      colorsInState.removeLast();

      List<GradientColorModel> newState =
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

  void _updateGradient({int? color, required int index, double? value}) {
    GradientColorModel colorToChange = state.gradientColors[index];
    GradientColorModel newColor = GradientColorModel(
        id: colorToChange.id,
        color: color ??= colorToChange.color,
        value: value ?? colorToChange.value);
    List<GradientColorModel> colorsInState = [...state.gradientColors];
    colorsInState[index] = newColor;
    emit(state.copyWith(gradientColors: colorsInState));
  }

  List<GradientColorModel> _setValueWhenAddCollor(
      {required List<GradientColorModel> gradientColorEnitiyList}) {
    double newvalue = 1 / (gradientColorEnitiyList.length - 1);
    List<GradientColorModel> colorsInState = [];
    GradientColorModel firstElement = gradientColorEnitiyList.removeAt(0);
    GradientColorModel lastElement = gradientColorEnitiyList.removeLast();

    colorsInState.add(GradientColorModel(
        id: firstElement.id, color: firstElement.color, value: 0));
    for (var element in gradientColorEnitiyList) {
      colorsInState.add(GradientColorModel(
          id: element.id, color: element.color, value: newvalue * element.id));
    }
    colorsInState.add(GradientColorModel(
        id: lastElement.id, color: lastElement.color, value: 1));

    return colorsInState;
  }

  @override
  AnimatedBoxState? fromJson(Map<String, dynamic> json) {
    try {
      return AnimatedBoxState.fromJson(json);
    } catch (e) {
      print('from jsocn $e');
      return _initail;
    }
  }

  @override
  Map<String, dynamic>? toJson(AnimatedBoxState state) {
    try {
      return state.toJson();
    } catch (e) {
      print('to json err $e');
    }
  }
}

// bloc initial state
final AnimatedBoxState _initail = AnimatedBoxState(
    offsetDx: 0,
    offsetDy: 0,
    boxWidth: 350.0,
    boxHeight: 350.0,
    shadowColor: AppColors.shadow.value,
    animatedBoxColor: Colors.grey.shade200.value,
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
      GradientColorModel(id: 0, color: AppColors.prussianBlue.value, value: 0),
      GradientColorModel(id: 1, color: AppColors.darkCyan.value, value: 1)
    ],
    beginLinearGradient: allGradientDirecitons[1],
    endLinearGradient: allGradientDirecitons[6],
    centerRadiusGradient: allGradientDirecitons[5]);
