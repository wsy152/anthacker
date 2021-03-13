import 'package:antihacherapp/global/myNav.dart';
import 'package:antihacherapp/home_page/home_page.dart';
import 'package:antihacherapp/login_page/components/my_icon_back.dart';
import 'package:antihacherapp/login_page/components/my_icon_button.dart';
import 'package:antihacherapp/login_page/components/my_logo.dart';
import 'package:antihacherapp/login_page/components/my_text_field.dart';
import 'package:antihacherapp/login_page/components/mybutton.dart';
import 'package:antihacherapp/login_page/controller/login_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginStore _loginStore = LoginStore();
  ReactionDisposer disposer;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    disposer = reaction((_) => _loginStore.loginIn, (loginIn) {
      if (loginIn) {
        push(context, HomePage(), replace: true);
      }
    });
  }

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
                child: Observer(builder: (_) {
                  return MyTextField(
                    hintText: 'E-mail',
                    onChanged: _loginStore.setEmail,
                    enabled: !_loginStore.loading,
                    autofocus: true,
                    fillColor: Colors.red,
                  );
                }),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Observer(builder: (_) {
                  return Observer(builder: (_) {
                    return MyTextField(
                      prefix: Icon(Icons.lock),
                      onChanged: _loginStore.setSenha,
                      hintText: 'Senha',
                      enabled: !_loginStore.loading,
                      autofocus: true,
                      obscureText: !_loginStore.senhaVisible,
                      //fillColor: Colors.red,
                      suffix: MyIconButton(
                        radius: 32,
                        iconData: !_loginStore.senhaIsValid
                            ? Icons.visibility_off
                            : Icons.visibility,
                        onTap: _loginStore.clicaSenhaToVisibility,
                      ),
                    );
                  });
                }),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Container(
                width: double.infinity,
                child: Observer(builder: (_) {
                  return MyButton(
                    texto: _loginStore.loading
                        ? CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                          )
                        : Text(
                            'Entrar',
                            //style: TextStyle(color: Colors.blue),
                          ),
                    onClickButton: _loginStore.loginPressed,
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    disposer();
    super.dispose();
  }
}
