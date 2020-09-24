import 'package:flutter/material.dart';

class PrimaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Primary")),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'secondary'),
      ),
      body: InformacionUsuario(),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
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
          title: Text('Nombre: '),
        ),
        ListTile(
          title: Text('Edad: '),
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
