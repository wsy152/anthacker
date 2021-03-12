import 'package:antihacherapp/global/myNav.dart';
import 'package:antihacherapp/login_page/components/my_logo.dart';
import 'package:antihacherapp/login_page/components/my_texto_login.dart';
import 'package:antihacherapp/login_page/components/mybutton.dart';
import 'package:antihacherapp/login_page/view/login_cadastro.dart';
import 'package:antihacherapp/login_page/view/login_page01.dart';
import 'package:flutter/material.dart';

class LoginPage00 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/mulher.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(90, 0, 90, 0),
              color: Color.fromRGBO(0, 0, 255, 0.4),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(0, 150, 0, 0)),
                  MyLogoLogin(),
                  Padding(padding: EdgeInsets.fromLTRB(0, 190, 0, 0)),
                  Column(
                    children: [
                      MyTextoLogin(),
                      Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                      MyButton(
                        texto: Text('Criar Conta'),
                        onClickButton: () {
                          push(context, LoginCadastro());
                        },
                        corTexto: Colors.blue[900],
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                      MyButton(
                        texto: Text('Login'),
                        onClickButton: () {
                          push(context, LoginPage());
                        },
                        corTexto: Colors.blue[900],
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
