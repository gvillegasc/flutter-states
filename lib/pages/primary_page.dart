import 'package:flutter/material.dart';
import 'package:flutter_states/models/usuario.dart';
import 'package:flutter_states/services/usuario_service.dart';

class PrimaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Primary")),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.accessibility_new),
          onPressed: () => Navigator.pushNamed(context, 'secondary'),
        ),
        body: StreamBuilder(
            stream: usuarioService.usuarioStream,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return snapshot.hasData
                  ? InformacionUsuario(
                      usuario: usuarioService.usuario,
                    )
                  : Center(
                      child: Text("No hay información del usuario"),
                    );
            }));
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;

  const InformacionUsuario({Key key, this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('General',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        Divider(),
        ListTile(
          title: Text('Nombre: ${usuario.nombre} '),
        ),
        ListTile(
          title: Text('Edad: ${usuario.edad}'),
        ),
        Text('Profesiones',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        Divider(),
        ListTile(
          title: Text('Profesion 1: '),
        ),
        ListTile(
          title: Text('Profesion 1: '),
        ),
        ListTile(
          title: Text('Profesion 1: '),
        ),
      ]),
    );
  }
}
