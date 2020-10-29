import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_states/bloc/usuario/usuario_bloc.dart';
import 'package:flutter_states/models/usuario.dart';

class SecondaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Secondary")),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        MaterialButton(
            child: Text(
              "Establece Usuario",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {
              final newUser = new Usuario(
                  nombre: 'Jose',
                  edad: 34,
                  profesiones: ['FullStack Developer']);
              BlocProvider.of<UsuarioBloc>(context)
                  .add(ActivarUsuario(newUser));
            }),
        MaterialButton(
            child: Text(
              "Cambiar Edad",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {}),
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
