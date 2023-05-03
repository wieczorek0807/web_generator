// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:box_shadow_generator/src/core/values/colors.dart';
import 'package:box_shadow_generator/src/domain/entities/gradient_box_entity.dart';
import 'package:box_shadow_generator/src/domain/entities/gradient_direction_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gradient_box_event.dart';
part 'gradient_box_state.dart';
part 'gradient_box_bloc.freezed.dart';

class GradientBoxBloc extends Bloc<GradientBoxEvent, GradientBoxState> {
  GradientBoxBloc()
      : super(GradientBoxState(
          gradientColors: _initialValue,
          isRadialGradient: false,
          isGradientEnabled: false,
          isLinearGradient: false,
          beginLinearGradient: allGradientDirecitons[1],
          endLinearGradient: allGradientDirecitons[6],
          centerRadiusGradient: allGradientDirecitons[5],
        )) {
    on<GradientBoxEvent>((event, emit) {
      _updateValues(event);
    });
  }

  static const _initialValue = [
    GradientColorEntity(AppColors.primary, 0, 0),
    GradientColorEntity(AppColors.third, 1, 1),
  ];

  void initialize() {
    add(const GradientBoxEvent.initial());
  }

  void _updateValues(GradientBoxEvent event) => event.maybeWhen(
        orElse: () => null,
        addGradientColor: _addGradientColor,
        removeGradientColor: _removeGradientColor,
        revertChanges: _revertChanges,
        updateGradientColor: (id, newColor) =>
            _updateGradientColor(color: newColor, index: id),
        updateGradientValue: (id, value) =>
            _updateGradientValue(index: id, value: value),
        changeGradientState: (value) => _changeGradientState(value),
        changeBeginValue: (value) => _changeBeginValue(value),
        changeEndValue: (value) => _changeEndValue(value),
        changeCenterValue: (value) => _changeCenterValue(value),
      );

  void _revertChanges() {
    emit(state.copyWith(gradientColors: _initialValue));
  }

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

  void _changeCenterValue(value) {
    emit(state.copyWith(centerRadiusGradient: value));
  }

  void _changeBeginValue(value) {
    emit(state.copyWith(beginLinearGradient: value));
  }

  void _changeEndValue(value) {
    emit(state.copyWith(endLinearGradient: value));
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
