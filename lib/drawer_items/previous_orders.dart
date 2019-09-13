import 'package:flutter/material.dart';

class Previous_orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Colors.blue[100], Colors.blue[400]],
    ),
    )
    ));
  }

}