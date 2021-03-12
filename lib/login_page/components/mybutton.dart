import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget texto;
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
        child: texto,
        style: ButtonStyle(
          backgroundColor: backgroundColor, //backgroundColor,
        ),
      ),
    );
  }
}
