// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:box_shadow_generator/src/core/extension/offset.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:box_shadow_generator/src/presentation/screens/update_shadows/model/shadow.dart';

import '../../../../data/local_storage_data_source.dart';

part 'shadow_event.dart';
part 'shadow_state.dart';
part 'shadow_bloc.freezed.dart';

class ShadowBloc extends Bloc<ShadowEvent, ShadowState> {
  ShadowBloc(this._storage) : super(const ShadowState.initial()) {
    on<ShadowEvent>((event, emit) {
      _updateValues(event);
      _updateScreen(emit);
    });
  }

  final LocalStorageDataSource _storage;

  Offset _offset = Offset.zero;
  double _spreadRadius = 0.0;
  double _blurRadius = 0.0;
  Color _shadowColor = Colors.black;
  Color _animatedBoxColor = Colors.grey.shade200;

  void initialize() {
    add(const ShadowEvent.initial());
  }

  void _revertChanges() {
    _offset = Offset.zero;
    _spreadRadius = 0.0;
    _blurRadius = 0.0;
    _shadowColor = Colors.black;
    _animatedBoxColor = Colors.grey.shade200;
  }

  void _updateValues(ShadowEvent event) => event.maybeWhen(
        orElse: () => null,
        updateSpread: (v) => _spreadRadius = v,
        updateBlur: (v) => _blurRadius = v,
        updateOffsetX: (v) => _offset = _offset.copyWith(dx: v),
        updateOffsetY: (v) => _offset = _offset.copyWith(dy: v),
        updateShadowColor: (v) => _shadowColor = v,
        updateAnimatedBoxColor: (v) => _animatedBoxColor = v,
        undoAnimatedBox: _revertChanges,
      );

  /// wchodzi -> ostatnio co zrobil
  /// cofanie -> do pocztkowych wartosci

  void _updateScreen(Emitter<ShadowState> emit) {
    EasyDebounce.debounce(
      'debouncer',
      const Duration(milliseconds: 500),
      () => _saveModelToDatabase(),
    );

    emit(ShadowState.updateShadow(
      spreadRadius: _spreadRadius,
      blurRadius: _blurRadius,
      offset: _offset,
      shadowColor: _shadowColor,
      animatedBoxColor: _animatedBoxColor,
    ));
  }

  void _saveModelToDatabase() {
    final model = Shadow(
      offsetDx: _offset.dx,
      offsetDy: _offset.dy,
      blurRadius: _blurRadius,
      spreadRadius: _spreadRadius,
      shadowColor: _shadowColor.value,
      animatedBoxColor: _animatedBoxColor.value,
    );

    _storage.saveShadow(model);
  }
}
