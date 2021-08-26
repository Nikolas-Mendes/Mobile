import 'package:cadastro_de_alunos/models/students.dart';
import 'package:cadastro_de_alunos/repositories/students/studentdb_repository.dart';
import 'package:cadastro_de_alunos/shared.dart/menu.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Editar extends StatelessWidget {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _registerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edição de Alunos"
        ),
      ),

      drawer: Menu(),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  labelText: "Matrícula do Aluno",
                  hintText: "Ex: 123",
                ),
                keyboardType: TextInputType.number,
                controller: _registerController,
              ),
      
              SizedBox(height: 15,),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  labelText: "Nome do Aluno",
                  hintText: "Ex: Lucas souza",
                ),
                keyboardType: TextInputType.name,
                controller: _nameController,
              ),
      
              SizedBox(height: 15,),
      
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  labelText: "Email do Responsável do Aluno",
                  hintText: "Ex: maria@gmail.com",
                ),
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
              ),

              SizedBox(height: 10,),
      
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          editRegister(context);
                        } ,
                        child: Text(
                          "Editar",
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                        ),
                      ),

                      SizedBox(width: 20,),

                      ElevatedButton(
                        onPressed: () {
                          removeRegister(context);
                        } ,
                        child: Text(
                          "Deletar",
                        ),
                        style: ElevatedButton.styleFrom(
                          // onPrimary: Colors.red,
                          primary: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void editRegister(BuildContext context) async{
    String register = _registerController.text;
    String name = _nameController.text;
    String email = _emailController.text;
    String message;

    if(!EmailValidator.validate(email)) {
      // Não é Valido
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text("Mensagem do Sistema", style: TextStyle(color: Colors.blue),),
          content: Text("Email inválido!!!\nTente usar o padrão descrito."),
          actions: [
            TextButton(
              onPressed: () {
                // Fecha o Alerta
                Navigator.of(context).pop();
              }, 
              child: Text("Ok"),
            ),
          ],
        ),
      );
    } else {
      // É valido
      Student student = Student(
        id: int.parse(register),
        name: name, 
        email: email,
      );

      // Cadastrando no Banco
      var repository = StudentDBRepository();
      int result = await repository.update(
        entity: student, 
        conditions: "id=?", 
        conditionsValue: [register],
      );

      if(result != 0) {
        // Deu certo
        message = "O aluno $name foi atualizado(a) com sucesso!";
      } else {
        // Deu errado
        message = "Não foi possível atualizar o aluno $name";
      }

      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text("Mensagem do Sistema", style: TextStyle(color: Colors.blue),),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                // Fecha o Alerta
                Navigator.of(context).pushNamed("/");
              }, 
              child: Text("Ok"),
            ),
          ],
        ),
      );
    }
  }

  void removeRegister(BuildContext context) async{
    int register = int.parse(_registerController.text);
    String message;

    var repository = StudentDBRepository();

    int result = await repository.remove(
      conditions: "id=?", 
      conditionsValue: [register],
    );

    if(result != 0) {
        // Deu certo
        message = "O aluno foi removido(a) com sucesso!";
      } else {
        // Deu errado
        message = "Não foi possível remover o aluno";
      }

    showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text("Mensagem do Sistema", style: TextStyle(color: Colors.blue),),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                // Fecha o Alerta
                Navigator.of(context).pushNamed("/");
              }, 
              child: Text("Ok"),
            ),
          ],
        ),
      );
  }
}