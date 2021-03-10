import 'package:antihacherapp/login_page/components/my_body_cadastro.dart';
import 'package:antihacherapp/login_page/components/my_icon_back.dart';

import 'package:flutter/material.dart';

class LoginCadastro extends StatefulWidget {
  @override
  _LoginCadastroState createState() => _LoginCadastroState();
}

class _LoginCadastroState extends State<LoginCadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MyIconBack(),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                MyBodyCadastro(),
                Positioned(
                  right: 170,
                  top: 10,
                  width: 90,
                  height: 90,
                  child: Container(
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
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
