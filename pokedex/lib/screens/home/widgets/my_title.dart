import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  final String title;

  const MyTitle({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
        Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 7,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 10,
              ),
              child: Text(
                this.title.toUpperCase(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
               ),
             ),
            ),
         ],
        ),
      ),
    ); 
  }
}