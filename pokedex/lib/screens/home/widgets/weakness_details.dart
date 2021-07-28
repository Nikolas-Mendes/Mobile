import 'package:flutter/material.dart';
import 'package:pokedex/models/characteristics.dart';
import 'package:pokedex/style.dart';

class WeaknessDetails extends StatelessWidget {
  final characteristics = Characteristics;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Fraqueza1
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: aquaBlueTheme,
            ),
            height: 40,
            width: 95,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                "Agua",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //Fraqueza2
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: yellowTheme,
            ),
            height: 40,
            width: 95,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                "Terra",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //Fraqueza3
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: darkYellowTheme,
            ),
            height: 40,
            width: 95,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                "Rocha",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}