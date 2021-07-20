import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xFF5226B9),
      // color: Color.fromARGB(255, 82, 38, 185),
      child: Center(
        child: Text("Hello Flutter"),
      ),
      width: 400,
      height: 400,
      padding: EdgeInsets.only(
        left: 50,
      ),
      margin: EdgeInsets.all(60),
      // margin: EdgeInsets.fromLTRB(20, 80, 34, 12),
      // margin: EdgeInsets.symmetric(
      //   vertical: 60,
      //   horizontal: 30,
      // ),
      // margin: EdgeInsets.only(
      //   right: 20,
      //   bottom: 20,
      // ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue[900],
      ),
    );
  }
}