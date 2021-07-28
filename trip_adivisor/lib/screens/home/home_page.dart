import 'package:flutter/material.dart';
import 'package:trip_adivisor/screens/home/widgets/details.dart';
import 'package:trip_adivisor/style.dart';
import 'package:trip_adivisor/screens/home/widgets/informations.dart';
import 'package:trip_adivisor/screens/home/widgets/photos.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/Banner.jpg"),

            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 27,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    // Linha do local e avaliaçoes
                    Details(),
                    //Coluna de Informação
                    Informations(),

                    Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                      child: Text(
                        "Fotos",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: greenTheme,
                        ),
                      ),
                    ),

                    //Coluna de fotos
                    Photos(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}