import 'package:cadastro_de_alunos/repositories/students/studentdb_repository.dart';
import 'package:cadastro_de_alunos/screens/home/widgets/main_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var studentDBRepository = StudentDBRepository();

    return FutureBuilder(
      future: studentDBRepository.search(),
      builder: builder,
    );
  }

  Widget builder(
    BuildContext context, 
    AsyncSnapshot snapshot,
  ) {
    switch(snapshot.connectionState) {
      case ConnectionState.none:
      case ConnectionState.waiting:
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      default: 
        return MainScreen(snapshot.data);
    }
  }
}