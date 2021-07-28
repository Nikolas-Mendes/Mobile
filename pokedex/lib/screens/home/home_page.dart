import 'package:flutter/material.dart';
import 'package:pokedex/models/characteristics.dart';
import 'package:pokedex/screens/home/widgets/description.dart';
import 'package:pokedex/screens/home/widgets/details.dart';
import 'package:pokedex/screens/home/widgets/my_title.dart';
import 'package:pokedex/screens/home/widgets/weakness_details.dart';
import 'package:pokedex/style.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final characteristics = Characteristics(
      name: "Charmander", 
      height: 0.6, 
      definition: "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda.",
      photo: "assets/2.0x/charmander.png", 
      weight: 8.5, 
      type: "Fogo", 
      skill: "Chama",
    );

    return Scaffold(
      // Top / AppBar
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: redTheme,
        title: Text(
          "Charmander #004",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Image.asset("assets/2.0x/logo.png"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: Container(
                    alignment: Alignment(
                        0.0, 0.0
                      ),
                    child: Image.asset(characteristics.photo),
                  ),
                ),

                Description(characteristics),
                
                Details(characteristics),

                MyTitle(
                  title: "Fraquezas",
                ),

                WeaknessDetails(

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}