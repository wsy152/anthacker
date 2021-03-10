import 'package:antihacherapp/login_page/components/my_icon_back.dart';
import 'package:antihacherapp/login_page/components/my_logo.dart';
import 'package:antihacherapp/login_page/components/my_text_field.dart';
import 'package:antihacherapp/login_page/components/mybutton.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MyIconBack(),
        elevation: 0,
      ),
      body: Container(
        color: Color.fromARGB(255, 224, 255, 255),
        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                     color: Colors.blue,
                      child: MyLogoLogin(),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 100, 0, 0)),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: MyTextField(
                  hintText: 'E-mail',
                  autofocus: true,
                  fillColor: Colors.red,
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: MyTextField(
                  hintText: 'Senha',
                  autofocus: true,
                  fillColor: Colors.red,
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              MyButton(
                texto: 'Entrar',
                onClickButton: () {},
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
