import 'dart:async';

import 'package:flutter_states/models/usuario.dart';

class _UsuarioService {
  Usuario _usuario;

  // ignore: close_sinks
  StreamController _usuarioStreamController =
      new StreamController<Usuario>.broadcast();

  Usuario get usuario => this._usuario;
  bool get existeUsuario => (this._usuario != null) ? true : false;

  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;

  void cargarUsuario(Usuario usuario) {
    this._usuario = usuario;
    this._usuarioStreamController.add(usuario);
  }

  void cambiarEdad(int edad) {
    this._usuario.edad = edad;
    this._usuarioStreamController.add(this.usuario);
  }

  dispose() {
    this._usuarioStreamController?.close();
  }
}

final usuarioService = new _UsuarioService();
