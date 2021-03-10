import 'package:flutter/material.dart';

class MyIconBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
        size: 30,
      ),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
