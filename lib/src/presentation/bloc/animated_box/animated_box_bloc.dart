// ignore: depend_on_referenced_packages
import 'package:box_shadow_generator/src/data/models/gradient%20_state/gradient_state_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../core/values/colors.dart';
import '../../../data/models/animated_box_model/animated_box_model.dart';
import '../../../data/models/gradient_color/gradient_color_model.dart';
import '../../../data/models/gradient_direction/gradient_direction_model.dart';

part 'animated_box_event.dart';
part 'animated_box_state.dart';
part 'animated_box_bloc.freezed.dart';
part 'animated_box_bloc.g.dart';

class AnimatedBoxBloc extends HydratedBloc<AnimatedBoxEvent, AnimatedBoxState> {
  AnimatedBoxBloc() : super(const AnimatedBoxState()) {
    on<AnimatedBoxEvent>((event, emit) {
      _updateValues(event);
    });
  }

  void _updateValues(AnimatedBoxEvent event) => event.maybeWhen(
        orElse: () => null,
        undoChanges: () => emit(const AnimatedBoxState()),
        updateSpread: (v) => emit(state.copyWith(animatedBox: state.animatedBox.copyWith(spreadRadius: v))),
        updateBlur: (v) => emit(state.copyWith(animatedBox: state.animatedBox.copyWith(blurRadius: v))),
        updateOffset: (x, y) {
          if (x != null) emit(state.copyWith(animatedBox: state.animatedBox.copyWith(offsetDx: x)));
          if (y != null) emit(state.copyWith(animatedBox: state.animatedBox.copyWith(offsetDy: y)));
          return null;
        },
        updateColor: (animatedBoxColor, shadowColor) {
          if (animatedBoxColor != null) {
            emit(state.copyWith(animatedBox: state.animatedBox.copyWith(animatedBoxColor: animatedBoxColor.value)));
          }
          if (shadowColor != null) emit(state.copyWith(animatedBox: state.animatedBox.copyWith(shadowColor: shadowColor.value)));
          return null;
        },
        updateRadius: (topLeft, topRight, bottomLeft, bottomRight) {
          if (topLeft != null) emit(state.copyWith(animatedBox: state.animatedBox.copyWith(topLeftRadius: topLeft)));
          if (topRight != null) emit(state.copyWith(animatedBox: state.animatedBox.copyWith(topRightRadius: topRight)));
          if (bottomLeft != null) emit(state.copyWith(animatedBox: state.animatedBox.copyWith(bottomLeftRadius: bottomLeft)));
          if (bottomRight != null) emit(state.copyWith(animatedBox: state.animatedBox.copyWith(bottomRightRadius: bottomRight)));
          return null;
        },
        updateBoxSize: (height, width) {
          if (width != null) emit(state.copyWith(animatedBox: state.animatedBox.copyWith(boxWidth: width)));
          if (height != null) emit(state.copyWith(animatedBox: state.animatedBox.copyWith(boxHeight: height)));
          return null;
        },
        addOrRemoveGradientColor: (add, remove) {
          if (add != null) _addGradientColor();
          if (remove != null) _removeGradientColor();
          return null;
        },
        updateGradientValueColor: (id, color, value) {
          if (color != null) _updateGradient(color: color.value, index: id);
          if (value != null) _updateGradient(index: id, value: value);
          return null;
        },
        changeGradientState: (v) => _changeGradientState(v),
        updateLinearGradientValue: (beginLinearGradient, endLinearGradient) {
          if (beginLinearGradient != null) {
            emit(state.copyWith(animatedBox: state.animatedBox.copyWith(beginLinearGradient: beginLinearGradient)));
          }
          if (endLinearGradient != null) {
            emit(state.copyWith(animatedBox: state.animatedBox.copyWith(endLinearGradient: endLinearGradient)));
          }
          return null;
        },
        updateGradientCenterValue: (v) => emit(state.copyWith(animatedBox: state.animatedBox.copyWith(centerRadiusGradient: v))),
      );

  // Gradient functions

  void _addGradientColor() {
    if (state.animatedBox.gradientColors.length >= 6) return;

    final newColor = GradientColorModel(id: state.animatedBox.gradientColors.length, color: AppColors.tangerine.value, value: 0);
    final colors = List.of([...state.animatedBox.gradientColors, newColor]);

    List<GradientColorModel> newState = _setValueWhenAddCollor(gradientColorEnitiyList: colors);
    emit(state.copyWith(animatedBox: state.animatedBox.copyWith(gradientColors: newState)));
  }

  void _removeGradientColor() {
    if (state.animatedBox.gradientColors.length <= 2) return;

    List<GradientColorModel> colorsInState = [...state.animatedBox.gradientColors];
    colorsInState.removeLast();

    List<GradientColorModel> newState = _setValueWhenAddCollor(gradientColorEnitiyList: colorsInState);
    emit(state.copyWith(animatedBox: state.animatedBox.copyWith(gradientColors: newState)));
  }

  void _changeGradientState(int value) {
    switch (value) {
      case 0:
        return emit(state.copyWith(gradientState: state.gradientState.copyWith(isGradientEnabled: false)));
      case 1:
        return emit(state.copyWith(
            gradientState: state.gradientState.copyWith(isGradientEnabled: true, isLinearGradient: true, isRadialGradient: false)));

      case 2:
        return emit(state.copyWith(
            gradientState: state.gradientState.copyWith(isGradientEnabled: true, isLinearGradient: false, isRadialGradient: true)));
    }
  }

  void _updateGradient({int? color, required int index, double? value}) {
    GradientColorModel colorToChange = state.animatedBox.gradientColors[index];
    GradientColorModel newColor =
        GradientColorModel(id: colorToChange.id, color: color ??= colorToChange.color, value: value ?? colorToChange.value);
    List<GradientColorModel> colorsInState = [...state.animatedBox.gradientColors];
    colorsInState[index] = newColor;
    emit(state.copyWith(animatedBox: state.animatedBox.copyWith(gradientColors: colorsInState)));
  }

  List<GradientColorModel> _setValueWhenAddCollor({required List<GradientColorModel> gradientColorEnitiyList}) {
    double newvalue = 1 / (gradientColorEnitiyList.length - 1);
    List<GradientColorModel> colorsInState = [];
    GradientColorModel firstElement = gradientColorEnitiyList.removeAt(0);
    GradientColorModel lastElement = gradientColorEnitiyList.removeLast();

    colorsInState.add(GradientColorModel(id: firstElement.id, color: firstElement.color, value: 0));
    for (var element in gradientColorEnitiyList) {
      colorsInState.add(GradientColorModel(id: element.id, color: element.color, value: newvalue * element.id));
    }
    colorsInState.add(GradientColorModel(id: lastElement.id, color: lastElement.color, value: 1));

    return colorsInState;
  }

  //Hydrated Bloc
  @override
  AnimatedBoxState? fromJson(Map<String, dynamic> json) {
    try {
      return AnimatedBoxState.fromJson(json);
    } catch (e) {
      // print('from jsocn $e');
      return const AnimatedBoxState();
    }
  }

  @override
  Map<String, dynamic>? toJson(AnimatedBoxState state) {
    try {
      return state.toJson();
    } catch (e) {
      // print('to json err $e');
    }
    return null;
  }
}
