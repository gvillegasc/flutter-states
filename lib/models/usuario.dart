import 'package:flutter/material.dart';

class Usuario {
  String nombre;
  int edad;
  List<String> profesiones;

  Usuario({
    @required this.nombre,
    this.edad,
    this.profesiones,
  });
}
