import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trip_adivisor/models/citys.dart';
import 'package:trip_adivisor/style.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final citys = Citys(
      city: "Paris", 
      state: "França", 
      likes: 32, 
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Local row
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            children: [
              FaIcon(
              FontAwesomeIcons.mapMarkerAlt,
              color: grayTheme,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              citys.city,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: grayTheme,
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "-",
              style: TextStyle(
                color: grayTheme,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              citys.state,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: grayTheme,
              ),
            ),
            ],
          ),
        ),

        // Avaliaçoes row
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            children: [
              FaIcon(
                FontAwesomeIcons.solidStar,
                color: orangeTheme,
              ),

              FaIcon(
                FontAwesomeIcons.solidStar,
                color: orangeTheme,
              ),

              FaIcon(
                FontAwesomeIcons.solidStar,
                color: orangeTheme,
              ),

              FaIcon(
                FontAwesomeIcons.solidStar,
                color: orangeTheme,
              ),

              FaIcon(
                FontAwesomeIcons.solidStar,
                color: grayTheme,
              ),

              SizedBox(
                width: 5,
              ),

              Text(
                "${citys.likes} avaliações",
                style: TextStyle(
                  fontSize: 16,
                  color: grayTheme,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}