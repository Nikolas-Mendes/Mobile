import 'package:cadastro_de_alunos/screens/cadastro/cadastro.dart';
import 'package:cadastro_de_alunos/screens/editar/editar.dart';
import 'package:cadastro_de_alunos/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/" : (BuildContext context) => Home(), 
        "/insert" : (BuildContext context) => Cadastro(), 
        "/edit" : (BuildContext context) => Editar(), 
      },
    )
  );
}
