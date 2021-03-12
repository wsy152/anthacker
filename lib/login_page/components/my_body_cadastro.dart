import 'package:antihacherapp/global/myNav.dart';
import 'package:antihacherapp/home_page/home_page.dart';
import 'package:antihacherapp/login_page/components/my_text_field.dart';
import 'package:antihacherapp/login_page/components/mybutton.dart';
import 'package:antihacherapp/login_page/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyBodyCadastro extends StatefulWidget {
  @override
  _MyBodyCadastroState createState() => _MyBodyCadastroState();
}

class _MyBodyCadastroState extends State<MyBodyCadastro> {
  TextEditingController _ctlNome = TextEditingController();
  TextEditingController _ctlEmail = TextEditingController();
  TextEditingController _ctlSenha = TextEditingController();

  _cadastrarUser(Usuario usuario) {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth
        .createUserWithEmailAndPassword(
            email: usuario.email, password: usuario.senha)
        .then((firebaseUser) {
      push(context, HomePage());
    }).catchError((error) {});
  }

  _validarCampos() {
    String nome = _ctlNome.text;
    String email = _ctlEmail.text;
    String senha = _ctlSenha.text;

    if (nome.length > 2) {
      if (email.isNotEmpty && email.contains('@')) {
        if (senha.isNotEmpty && senha.length > 2) {
          Usuario usuario = Usuario();
          _cadastrarUser(usuario);
        } else {}
      } else {}
    } else {}
  }

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
                      texto: Text('Entrar com Apple'),
                      onClickButton: () {},
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black)),
                  SizedBox(
                    height: 10,
                  ),
                  MyButton(
                      texto: Text('Entrar com Google'),
                      onClickButton: () {},
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red[900])),
                  SizedBox(
                    height: 10,
                  ),
                  MyButton(
                    texto: Text('Entrar com Facebook'),
                    onClickButton: () {},
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue[900]),
                  ),
                  SizedBox(height: 25),
                  Text("----Ou entre com seu e-mail _____"),
                  SizedBox(height: 5),
                  MyTextField(hintText: 'Nome', controller: _ctlNome),
                  SizedBox(height: 5),
                  MyTextField(hintText: 'E-mail', controller: _ctlEmail),
                  SizedBox(height: 5),
                  MyTextField(
                    hintText: 'Senha',
                    controller: _ctlSenha,
                    obscureText: true,
                  ),
                  SizedBox(height: 10),
                  MyButton(
                    texto: Text('Cadastrar'),
                    onClickButton: () {
                      _validarCampos();
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyButton(
                    texto: Text('já tenho cadastro'),
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
