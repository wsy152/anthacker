// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStoreBase, Store {
  Computed<bool> _$emailIsValidComputed;

  @override
  bool get emailIsValid =>
      (_$emailIsValidComputed ??= Computed<bool>(() => super.emailIsValid,
              name: '_LoginStoreBase.emailIsValid'))
          .value;
  Computed<bool> _$senhaIsValidComputed;

  @override
  bool get senhaIsValid =>
      (_$senhaIsValidComputed ??= Computed<bool>(() => super.senhaIsValid,
              name: '_LoginStoreBase.senhaIsValid'))
          .value;
  Computed<Function> _$loginPressedComputed;

  @override
  Function get loginPressed =>
      (_$loginPressedComputed ??= Computed<Function>(() => super.loginPressed,
              name: '_LoginStoreBase.loginPressed'))
          .value;

  final _$_emailAtom = Atom(name: '_LoginStoreBase._email');

  @override
  String get _email {
    _$_emailAtom.reportRead();
    return super._email;
  }

  @override
  set _email(String value) {
    _$_emailAtom.reportWrite(value, super._email, () {
      super._email = value;
    });
  }

  final _$_senhaAtom = Atom(name: '_LoginStoreBase._senha');

  @override
  String get _senha {
    _$_senhaAtom.reportRead();
    return super._senha;
  }

  @override
  set _senha(String value) {
    _$_senhaAtom.reportWrite(value, super._senha, () {
      super._senha = value;
    });
  }

  final _$senhaVisibleAtom = Atom(name: '_LoginStoreBase.senhaVisible');

  @override
  bool get senhaVisible {
    _$senhaVisibleAtom.reportRead();
    return super.senhaVisible;
  }

  @override
  set senhaVisible(bool value) {
    _$senhaVisibleAtom.reportWrite(value, super.senhaVisible, () {
      super.senhaVisible = value;
    });
  }

  final _$loadingAtom = Atom(name: '_LoginStoreBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$loginInAtom = Atom(name: '_LoginStoreBase.loginIn');

  @override
  bool get loginIn {
    _$loginInAtom.reportRead();
    return super.loginIn;
  }

  @override
  set loginIn(bool value) {
    _$loginInAtom.reportWrite(value, super.loginIn, () {
      super.loginIn = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_LoginStoreBase.login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_LoginStoreBaseActionController =
      ActionController(name: '_LoginStoreBase');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String value) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clicaSenhaToVisibility() {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.clicaSenhaToVisibility');
    try {
      return super.clicaSenhaToVisibility();
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logout() {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.logout');
    try {
      return super.logout();
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
senhaVisible: ${senhaVisible},
loading: ${loading},
loginIn: ${loginIn},
emailIsValid: ${emailIsValid},
senhaIsValid: ${senhaIsValid},
loginPressed: ${loginPressed}
    ''';
  }
}
