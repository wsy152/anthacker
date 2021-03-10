import 'package:flutter/material.dart';

class MyLogoCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 20,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/escudo.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.blue[900],
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
            bottomLeft: const Radius.circular(20.0),
            bottomRight: const Radius.circular(20.0),
          )),
    );
  }
}
