import 'package:antihacherapp/global/myNav.dart';
import 'package:antihacherapp/login_page/view/login_page01.dart';
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
      onPressed: () {
        push(context, LoginPage());
      },
    );
  }
}
