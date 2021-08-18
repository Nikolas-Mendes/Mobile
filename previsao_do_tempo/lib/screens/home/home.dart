import 'package:flutter/material.dart';
import 'package:previsao_do_tempo/providers/weather_server.dart';
import 'package:previsao_do_tempo/screens/home/widgets/main_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (BuildContext _, AsyncSnapshot snap) {
        switch(snap.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Scaffold(
              body: Center(child: CircularProgressIndicator(),),
            );
          default: 
            return MainScreen(
              data: snap.data["results"],
            );
        }
      },
    );
  }
}