import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  _LoginStoreBase() {
    autorun((_) {
      print(_email);
    });
  }
  @observable
  String _email = '';

  @action
  void setEmail(String value) => _email = value;

  @observable
  String _senha = '';

  @action
  void setSenha(String value) => _senha = value;

  @observable
  bool senhaVisible = false;

  @action
  void clicaSenhaToVisibility() => senhaVisible = !senhaVisible;

  @observable
  bool loading = false;

  @observable
  bool loginIn = false;

  @computed
  bool get emailIsValid => RegExp(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
      .hasMatch(_email);
  @computed
  bool get senhaIsValid => _senha.length >= 6;

  @computed
  Function get loginPressed =>
      (emailIsValid && senhaIsValid && !loading) ? login : null;

  @action
  Future<void> login() async {
    loading = true;
    loginIn = false;
    await Future.delayed(Duration(seconds: 2));
    FirebaseAuth auth = FirebaseAuth.instance;
    auth
        .createUserWithEmailAndPassword(
      email: _email,
      password: _senha,
    )
        .then((firebaseUser) {
      loading = false;
      loginIn = true;
    }).catchError((error) {
      loading = false;
      print('deu ruim');
    });
  }

  @action
  void logout() {
    loginIn = false;
  }
}
