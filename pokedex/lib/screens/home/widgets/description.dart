import 'package:flutter/material.dart';
import 'package:pokedex/models/characteristics.dart';

class Description extends StatelessWidget {

  final Characteristics _description;

  Description(this._description);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Container(
        child: 
        Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
          child: Text(
            _description.definition,
              style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}