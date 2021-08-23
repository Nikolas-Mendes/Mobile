import 'package:cadastro_de_alunos/models/students.dart';
import 'package:cadastro_de_alunos/repositories/students/studentdb_repository.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _registerController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  bool isEdit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cadastro de Alunos"
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
            // Form(
            //   child: 
              TextField(
                decoration: InputDecoration(
                  labelText: "Matricula do Aluno",
                  hintText: "Ex: 123",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
                controller: _registerController,
                enabled: (isEdit) ? true : false,
                // validator: (value) {
                //   if(value == "") {
                //     return "Campo não pode ficar em branco";
                //   } 
                //   return null;
                // }
              ),
            // ),
              
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Deseja editar?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Switch(
                    value: isEdit, 
                    onChanged: (bool status) {
                      setState(() {
                        isEdit = !isEdit;
                      });
                    },
                  ),
                ],
              ),

              SizedBox(height: 10,),
      
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: (isEdit) ? null : () {
                      saveRegister();
                    } ,
                    child: Text(
                      "Cadastrar",
                    ),
                  ),

                  ElevatedButton(
                    onPressed: (isEdit) ? () {} : null,
                    child: Text(
                      "Editar",
                    ),
                  ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     saveRegister();
                  //   }, 
                  //   child: Text(
                  //     "Deletar",
                  //   ),
                  // ),
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
                Navigator.of(context).pop();
              }, 
              child: Text("Ok"),
            ),
          ],
        ),
      );
    }
  }
}