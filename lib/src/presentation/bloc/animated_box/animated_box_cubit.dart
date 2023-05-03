import 'dart:ffi';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:box_shadow_generator/src/core/values/colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/gradient_box_entity.dart';
import '../../../domain/entities/gradient_direction_entity.dart';

part 'animated_box_state.dart';
part 'animated_box_cubit.freezed.dart';

class AnimatedBoxCubit extends Cubit<AnimatedBoxState> {
  AnimatedBoxCubit()
      : super(AnimatedBoxState(
            offset: Offset.zero,
            boxWidth: 350.0,
            boxHeight: 350.0,
            shadowColor: AppColors.shadow,
            animatedBoxColor: AppColors.background,
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
              GradientColorEntity(AppColors.primary, 0, 0),
              GradientColorEntity(AppColors.third, 1, 1),
            ],
            beginLinearGradient: allGradientDirecitons[1],
            endLinearGradient: allGradientDirecitons[6],
            centerRadiusGradient: allGradientDirecitons[5]));
}
