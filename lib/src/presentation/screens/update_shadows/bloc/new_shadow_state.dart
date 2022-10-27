part of 'new_shadow_bloc.dart';

abstract class NewShadowState extends Equatable {
  const NewShadowState();

  @override
  List<Object> get props => [];
}

class NewShadowInitial extends NewShadowState {
  const NewShadowInitial();
}

class NewShadowLoaded extends NewShadowState {
  const NewShadowLoaded();
}
