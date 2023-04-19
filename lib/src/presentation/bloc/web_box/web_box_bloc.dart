// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:box_shadow_generator/src/core/extension/offset.dart';
import '../../../data/repositories/web_box_repository_impl.dart';
import '../../../domain/entities/web_box_entity.dart';

part 'web_box_bloc.freezed.dart';
part 'web_box_event.dart';
part 'web_box_state.dart';

class WebBoxBloc extends Bloc<WebBoxEvent, WebBoxState> {
  WebBoxBloc({required this.repositoryImpl})
      : super(const WebBoxState.initial()) {
    on<WebBoxEvent>((event, emit) {
      _updateValues(event);
      _updateScreen(emit);
    });
  }

  final WebBoxRepositoryImpl repositoryImpl;

  Offset _offset = Offset.zero;
  double _spreadRadius = 0.0;
  double _blurRadius = 0.0;
  Color _shadowColor = Colors.black;
  Color _animatedBoxColor = Colors.grey.shade200;

  void initialize() {
    add(const WebBoxEvent.initial());
  }

  void _revertChanges() {
    _offset = Offset.zero;
    _spreadRadius = 0.0;
    _blurRadius = 0.0;
    _shadowColor = Colors.black;
    _animatedBoxColor = Colors.grey.shade200;
  }

  void _updateValues(WebBoxEvent event) => event.maybeWhen(
        orElse: () => null,
        updateSpread: (v) => _spreadRadius = v,
        updateBlur: (v) => _blurRadius = v,
        updateOffsetX: (v) => _offset = _offset.copyWith(dx: v),
        updateOffsetY: (v) => _offset = _offset.copyWith(dy: v),
        updateShadowColor: (v) => _shadowColor = v,
        updateAnimatedBoxColor: (v) => _animatedBoxColor = v,
        undoAnimatedBox: _revertChanges,
      );

  void _updateScreen(Emitter<WebBoxState> emit) {
    EasyDebounce.debounce(
      'debouncer',
      const Duration(milliseconds: 500),
      () => _saveModelToDatabase(),
    );

    emit(WebBoxState.updateWebBox(
      spreadRadius: _spreadRadius,
      blurRadius: _blurRadius,
      offset: _offset,
      shadowColor: _shadowColor,
      animatedBoxColor: _animatedBoxColor,
    ));
  }

  void _saveModelToDatabase() {
    final WebBoxEntity webBoxEntity = WebBoxEntity(
      offsetDx: _offset.dx,
      offsetDy: _offset.dy,
      blurRadius: _blurRadius,
      spreadRadius: _spreadRadius,
      shadowColor: _shadowColor.value,
      animatedBoxColor: _animatedBoxColor.value,
    );

    repositoryImpl.saveWebBox(webBoxEntity);
  }
}
