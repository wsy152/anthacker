import 'package:flutter/material.dart';

class MyTextoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Bem-vindo ao',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        Text(
          'Antihacker',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
        ),
        Text(
          'Nossa missão é simplificar a',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        Text(
          'segurança digital',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ],
    );
  }
}
