import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pokedex/models/characteristics.dart';
import 'package:pokedex/style.dart';

class Details extends StatelessWidget {

  final Characteristics _characteristicsObj;

  Details(
    this._characteristicsObj,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: blueTheme,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //Primeira coluna:
          Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 31,
                    ),
                    child: Text(
                      "Altura",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),

                  Text(
                    "${_characteristicsObj.height} m",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  bottom: 15,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Text(
                        "Tipo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: orangeTheme,
                        borderRadius: BorderRadius.circular(5),  
                      ),
                      width: 70,
                      height: 30,
                      child: 
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 7,
                          ),
                          child: Text(
                            "${_characteristicsObj.type}",
                            textAlign: TextAlign.center,
                          style: TextStyle(
                           fontWeight: FontWeight.bold,
                            fontSize: 16,
                           color: Colors.white,
                          ),
                      ),
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Column(
            children: [

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      "Peso",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  Text(
                    "${_characteristicsObj.weight} kg",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                ),
                child: Column(
                  children: [
                    Text(
                      "Habilidade",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Text(
                        "${_characteristicsObj.skill}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                 ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}