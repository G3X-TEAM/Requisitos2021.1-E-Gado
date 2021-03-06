// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserController on UserControllerBase, Store {
  final _$emailAtom = Atom(name: 'UserControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$userNameAtom = Atom(name: 'UserControllerBase.userName');

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  final _$tokenAtom = Atom(name: 'UserControllerBase.token');

  @override
  String get token {
    _$tokenAtom.reportRead();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.reportWrite(value, super.token, () {
      super.token = value;
    });
  }

  final _$isRegisterAtom = Atom(name: 'UserControllerBase.isRegister');

  @override
  bool get isRegister {
    _$isRegisterAtom.reportRead();
    return super.isRegister;
  }

  @override
  set isRegister(bool value) {
    _$isRegisterAtom.reportWrite(value, super.isRegister, () {
      super.isRegister = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('UserControllerBase.login');

  @override
  Future login(String email, String password) {
    return _$loginAsyncAction.run(() => super.login(email, password));
  }

  final _$logoutAsyncAction = AsyncAction('UserControllerBase.logout');

  @override
  Future logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  final _$registerAsyncAction = AsyncAction('UserControllerBase.register');

  @override
  Future register(String email, String userName, String password) {
    return _$registerAsyncAction
        .run(() => super.register(email, userName, password));
  }

  final _$UserControllerBaseActionController =
      ActionController(name: 'UserControllerBase');

  @override
  dynamic changeEmail(String value) {
    final _$actionInfo = _$UserControllerBaseActionController.startAction(
        name: 'UserControllerBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeUsername(String value) {
    final _$actionInfo = _$UserControllerBaseActionController.startAction(
        name: 'UserControllerBase.changeUsername');
    try {
      return super.changeUsername(value);
    } finally {
      _$UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeToken(String value) {
    final _$actionInfo = _$UserControllerBaseActionController.startAction(
        name: 'UserControllerBase.changeToken');
    try {
      return super.changeToken(value);
    } finally {
      _$UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeRegister(bool value) {
    final _$actionInfo = _$UserControllerBaseActionController.startAction(
        name: 'UserControllerBase.changeRegister');
    try {
      return super.changeRegister(value);
    } finally {
      _$UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
userName: ${userName},
token: ${token},
isRegister: ${isRegister}
    ''';
  }
}
