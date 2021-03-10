import 'package:antihacherapp/login_page/components/my_text_field.dart';
import 'package:antihacherapp/login_page/components/mybutton.dart';
import 'package:flutter/material.dart';

class MyBodyCadastro extends StatefulWidget {
  @override
  _MyBodyCadastroState createState() => _MyBodyCadastroState();
}

class _MyBodyCadastroState extends State<MyBodyCadastro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
      height: MediaQuery.of(context).size.height * 1.0,
      width: double.infinity,
      color: Color.fromARGB(255, 224, 255, 255),
      child: Container(
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(40.0),
              topRight: const Radius.circular(40.0),
            )),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    "Vamos começar!",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text("Crie sua conta e comece a proteger",
                      style: TextStyle(fontSize: 18)),
                  Text("sua vida digital", style: TextStyle(fontSize: 18)),
                  SizedBox(
                    height: 30,
                  ),
                  MyButton(
                      texto: 'Entrar com Apple',
                      onClickButton: () {},
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black)),
                  SizedBox(
                    height: 10,
                  ),
                  MyButton(
                      texto: 'Entrar com Google',
                      onClickButton: () {},
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red[900])),
                  SizedBox(
                    height: 10,
                  ),
                  MyButton(
                    texto: 'Entrar com Facebook',
                    onClickButton: () {},
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue[900]),
                  ),
                  SizedBox(height: 25),
                  Text("----Ou entre com seu e-mail _____"),
                  SizedBox(height: 5),
                  MyTextField(hintText: 'Nome'),
                  SizedBox(height: 5),
                  MyTextField(hintText: 'E-mail'),
                  SizedBox(height: 5),
                  MyTextField(hintText: 'Senha'),
                  SizedBox(height: 10),
                  MyButton(
                    texto: 'Cadastrar',
                    onClickButton: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyButton(
                    texto: 'já tenho cadastro',
                    onClickButton: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
