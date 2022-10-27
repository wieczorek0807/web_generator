import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:box_shadow_generator/src/presentation/screens/update_shadows/model/shadow.dart';
import 'package:equatable/equatable.dart';

part 'new_shadow_event.dart';
part 'new_shadow_state.dart';

class NewShadowBloc extends Bloc<NewShadowEvent, NewShadowState> {
  NewShadowBloc() : super(const NewShadowInitial()) {
    on<UpdateNewShadow>((event, emit) async {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(const NewShadowLoaded());
    });

    on<UndoNewShadow>((event, emit) async {
      await Future<void>.delayed(const Duration(seconds: 5));
      emit(const NewShadowLoaded());
    });
  }
}
