import 'package:flutter/material.dart';

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
            onPressed: () {}),
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
