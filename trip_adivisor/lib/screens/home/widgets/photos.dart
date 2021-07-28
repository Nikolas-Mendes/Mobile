import 'package:flutter/material.dart';

class Photos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset("assets/images/foto_1.jpg"),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      "Musée d'Orsay",
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset("assets/images/foto_2.jpg"),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      "Catedral de Notre-Dame",
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset("assets/images/foto_3.jpg"),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      "Sainte-Chapelle",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(
            top: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset("assets/images/foto_4.jpg"),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      "Museu do Louvre",
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset("assets/images/foto_5.jpg"),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      "Arco do Triunfo",
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset("assets/images/foto_6.jpg"),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      "Palais Garnier",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(
            top: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset("assets/images/foto_7.jpg"),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      "Jardim de Luxemburgo",
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset("assets/images/foto_8.jpg"),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      "Seine River",
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset("assets/images/foto_9.jpg"),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      "Torre Eiffel",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ); 
  }
}