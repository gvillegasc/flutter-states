import 'package:flutter_states/models/usuario.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'usuario_state.dart';
part 'usuario_event.dart';

class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {
  UsuarioBloc() : super(UsuarioState());

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async* {
    print(event);
    if (event is ActivarUsuario) {
      yield UsuarioState(user: event.usuario);
    }
  }
}
