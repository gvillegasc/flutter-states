import 'package:flutter/material.dart';
import 'package:flutter_states/models/usuario.dart';
import 'package:flutter_states/services/usuario_service.dart';

class SecondaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: StreamBuilder(
              stream: usuarioService.usuarioStream,
              builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
                return snapshot.hasData
                    ? Text("Nombre: ${snapshot.data.nombre}")
                    : Text("Secondary");
              })),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        MaterialButton(
            child: Text(
              "Establece Usuario",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {
              final nuevoUsuario = new Usuario(nombre: 'Pepe', edad: 20);
              usuarioService.cargarUsuario(nuevoUsuario);
            }),
        MaterialButton(
            child: Text(
              "Cambiar Edad",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {
              usuarioService.cambiarEdad(55);
            }),
        MaterialButton(
            child: Text(
              "Añadir Profesión",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {})
      ])),
    );
  }
}
