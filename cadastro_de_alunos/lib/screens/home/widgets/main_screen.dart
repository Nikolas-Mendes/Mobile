import 'package:cadastro_de_alunos/models/students.dart';
import 'package:cadastro_de_alunos/repositories/students/studentdb_repository.dart';
import 'package:cadastro_de_alunos/shared.dart/menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final _registerController = TextEditingController();

  final List<Student> data;

  MainScreen(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alunos Cadastrados",
        ),
      ),
      drawer: Menu(),
      body: ListView.separated(
        itemBuilder: listBuilder, 
        separatorBuilder: (BuildContext _, int index) => Divider(), 
        itemCount: this.data.length,
      ),
    );
  }

  Widget listBuilder(BuildContext context, int index) {
    Student student = this.data.elementAt(index);

    return ListTile(
      leading: Icon(Icons.account_box),
      title: Text(student.name),
      subtitle: Text(student.email),
    );
  }
}