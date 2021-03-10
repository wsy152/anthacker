import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final Color fillColor;
  final TextInputType keyboardType;
  final bool autofocus;
  MyTextField(
      {this.hintText,
      this.fillColor,
      this.keyboardType,
      this.autofocus = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      keyboardType: keyboardType,
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
        hintText: hintText,
        filled: true,
        fillColor: fillColor,
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(45)),
      ),
    );
  }
}
