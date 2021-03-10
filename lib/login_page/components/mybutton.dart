import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String texto;
  final Color corTexto;
  final MaterialStateProperty<Color> backgroundColor;

  final VoidCallback onClickButton;
  MyButton(
      {@required this.texto,
      @required this.onClickButton,
      this.corTexto,
      this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: onClickButton,
        child: Text(texto, style: TextStyle(color: corTexto)),
        style: ButtonStyle(
          backgroundColor: backgroundColor, //backgroundColor,
        ),
      ),
    );
  }
}
