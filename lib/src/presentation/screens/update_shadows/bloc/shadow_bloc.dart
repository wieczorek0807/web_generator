import 'package:bloc/bloc.dart';
import 'package:box_shadow_generator/src/core/extension/offset.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shadow_event.dart';
part 'shadow_state.dart';
part 'shadow_bloc.freezed.dart';

class ShadowBloc extends Bloc<ShadowEvent, ShadowState> {
  ShadowBloc() : super(const ShadowState.initial()) {
    on<ShadowEvent>((event, emit) {
      _updateValues(event);
      _updateScreen(emit);
    });
  }

  Offset _offset = Offset.zero;
  double _spreadRadius = 0.0;
  double _blurRadius = 0.0;
  Color _color = Colors.black;

  void initialize(){
    add(const ShadowEvent.initial());
  }

  void _updateValues(ShadowEvent event) => event.maybeWhen(
        orElse: () => null,
        updateSpread: (v) => _spreadRadius = v,
        updateBlur: (v) => _blurRadius = v,
        updateOffsetX: (v) => _offset = _offset.copyWith(dx: v),
        updateOffsetY: (v) => _offset = _offset.copyWith(dy: v),
        updateColor: (v) => _color = v,
      );

  void _updateScreen(Emitter<ShadowState> emit) {
    emit(ShadowState.updateShadow(
      spreadRadius: _spreadRadius,
      blurRadius: _blurRadius,
      offset: _offset,
      color: _color,
    ));
  }
}
