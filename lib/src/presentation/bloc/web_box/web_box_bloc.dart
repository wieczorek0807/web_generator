// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:box_shadow_generator/src/core/err/failures.dart';
import 'package:box_shadow_generator/src/domain/usecases/get_web_box_usecase.dart';
import 'package:dartz/dartz.dart';
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
  WebBoxBloc({required this.repositoryImpl, required this.getWebBoxUseCase})
      : super(const WebBoxState.initial()) {
    on<WebBoxEvent>((event, emit) {
      _updateValues(event);
      _updateScreen(emit);
    });
  }

  final WebBoxRepositoryImpl repositoryImpl;
  final GetWebBoxUseCase getWebBoxUseCase;

  Offset _offset = Offset.zero;
  double _spreadRadius = 0.0;
  double _blurRadius = 0.0;
  Color _shadowColor = Colors.black;
  Color _animatedBoxColor = Colors.grey.shade200;
  double _topLeftRadius = 0.0;
  double _topRightRadius = 0.0;
  double _bottomLeftRadius = 0.0;
  double _bottomRightRadius = 0.0;
  double _boxHeight = 350.0;
  double _boxWidth = 350.0;

  void initialize() {
    add(const WebBoxEvent.initial());
    add(const WebBoxEvent.getFromLocalDataSource());
  }

  void _revertChanges() {
    _offset = Offset.zero;
    _spreadRadius = 0.0;
    _blurRadius = 0.0;
    _shadowColor = Colors.black;
    _animatedBoxColor = Colors.grey.shade200;
    _topLeftRadius = 0.0;
    _topRightRadius = 0.0;
    _bottomLeftRadius = 0.0;
    _bottomRightRadius = 0.0;
    _boxHeight = 350.0;
    _boxWidth = 350.0;
  }

  void _updateValues(WebBoxEvent event) => event.maybeWhen(
        orElse: () => null,
        updateSpread: (v) => _spreadRadius = v,
        updateBlur: (v) => _blurRadius = v,
        updateOffsetX: (v) => _offset = _offset.copyWith(dx: v),
        updateOffsetY: (v) => _offset = _offset.copyWith(dy: v),
        updateShadowColor: (v) => _shadowColor = v,
        updateAnimatedBoxColor: (v) => _animatedBoxColor = v,
        updateTopLeftRadius: (v) => _topLeftRadius = v,
        updateTopRightRadius: (v) => _topRightRadius = v,
        updateBottomLeftRadius: (v) => _bottomLeftRadius = v,
        updateBottomRightRadius: (v) => _bottomRightRadius = v,
        updateBoxHeight: (v) => _boxHeight = v,
        updateBoxWidth: (v) => _boxWidth = v,
        getFromLocalDataSource: _getFromLocalDataSource,
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
        topLeftRadius: _topLeftRadius,
        topRightRadius: _topRightRadius,
        bottomLeftRadius: _bottomLeftRadius,
        bottomRightRadius: _bottomRightRadius,
        boxHeight: _boxHeight,
        boxWidth: _boxWidth));
  }

  void _saveModelToDatabase() {
    final WebBoxEntity webBoxEntity = WebBoxEntity(
      offsetDx: _offset.dx,
      offsetDy: _offset.dy,
      blurRadius: _blurRadius,
      spreadRadius: _spreadRadius,
      shadowColor: _shadowColor.value,
      animatedBoxColor: _animatedBoxColor.value,
      bottomLeftRadius: _bottomLeftRadius,
      bottomRightRadius: _bottomRightRadius,
      topLeftRadius: _topLeftRadius,
      topRightRadius: _topRightRadius,
      boxHeight: _boxHeight,
      boxWidth: _boxWidth,
    );

    repositoryImpl.saveWebBox(webBoxEntity);
  }

  Future<void> _getFromLocalDataSource() async {
    final Either<Failure, WebBoxEntity> webBoxEntityOrFailure =
        await getWebBoxUseCase.call();

    webBoxEntityOrFailure.fold((l) => null, (r) {
      _offset = Offset(r.offsetDx, r.offsetDy);
      _spreadRadius = r.spreadRadius;
      _blurRadius = r.blurRadius;
      _shadowColor = Color(r.shadowColor);
      _animatedBoxColor = Color(r.animatedBoxColor);
      _topLeftRadius = r.topLeftRadius;
      _topRightRadius = r.topRightRadius;
      _bottomLeftRadius = r.bottomLeftRadius;
      _bottomRightRadius = r.bottomRightRadius;
      _boxHeight = r.boxHeight;
      _boxWidth = r.boxWidth;
    });
  }
}
