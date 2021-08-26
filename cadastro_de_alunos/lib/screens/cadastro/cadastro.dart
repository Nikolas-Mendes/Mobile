import 'package:cadastro_de_alunos/models/students.dart';
import 'package:cadastro_de_alunos/repositories/students/studentdb_repository.dart';
import 'package:cadastro_de_alunos/shared.dart/menu.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({ Key? key }) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  // bool isEdit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cadastro de Alunos"
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
                  ElevatedButton(
                    onPressed: () {
                      saveRegister();
                    } ,
                    child: Text(
                      "Cadastrar",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveRegister() async{
    final String name = _nameController.text;
    final String email = _emailController.text;
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
        name: name, 
        email: email,
      );

      // Cadastrando no Banco
      var repository = StudentDBRepository();
      int result = await repository.insert(student);

      if(result != 0) {
        // Deu certo
        message = "O aluno $name foi cadastrado(a) com sucesso!\nSua matricula é: $result";
      } else {
        // Deu errado
        message = "Não foi possível cadastrar o aluno $name";
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
}