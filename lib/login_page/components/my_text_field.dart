import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final Color fillColor;
  final TextInputType keyboardType;
  final bool autofocus;
  final bool obscureText;
  final Widget prefix;
  final bool enabled;
  final Widget suffix;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  MyTextField(
      {this.hintText,
      this.fillColor,
      this.controller,
      this.keyboardType,
      this.onChanged,
      this.prefix,
      this.enabled,
      this.suffix,
      this.obscureText = false,
      this.autofocus = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(2),
      ),
      child: TextFormField(
        enabled: enabled,
        onChanged: onChanged,
        controller: controller,
        obscureText: obscureText,
        autofocus: autofocus,
        keyboardType: keyboardType,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
          hintText: hintText,
          filled: true,
          fillColor: fillColor,
          prefixIcon: prefix,
          suffixIcon: suffix,
        ),
      ),
    );
  }
}
