import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed("/insert");
                }, 
                icon: Icon(Icons.add_circle_rounded), 
                label: Text(
                  "Cadastrar aluno",
                ),
              ),

              TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed("/edit");
                }, 
                icon: Icon(Icons.edit), 
                label: Text(
                  "Editar aluno",
                ),
              ),

              TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                }, 
                icon: Icon(Icons.list), 
                label: Text(
                  "Lista de aluno",
                ),
              ),
            ],
          ),
        ),
      );
  }
}