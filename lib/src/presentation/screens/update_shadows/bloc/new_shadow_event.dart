part of 'new_shadow_bloc.dart';

abstract class NewShadowEvent extends Equatable {
  const NewShadowEvent();

  @override
  List<Object> get props => [];
}

class UpdateNewShadow extends NewShadowEvent {
  final Shadow shadow;

  const UpdateNewShadow(this.shadow);

  @override
  List<Object> get props => [shadow];
}

class UndoNewShadow extends NewShadowEvent {
  const UndoNewShadow();

  @override
  List<Object> get props => [];
}
