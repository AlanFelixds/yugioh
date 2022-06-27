import 'package:flutter/material.dart';
import 'package:yugioh/app/modulos/login/state/login_state.dart';

class LoginController extends LoginState {
  LoginController() : super(state: LoginStatus.inicial);

  Future<void> logar({required String usuario, required String senha}) async {
    state = LoginStatus.carregando;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 5), () async {});
    try {
      if (usuario == 'depp' && senha == 'depp') {
        state = LoginStatus.completo;
        debugPrint('login completo');
        notifyListeners();
      } else {
        throw Error();
      }
    } catch (e) {
      state = LoginStatus.erro;
      debugPrint('erro ao realizar login, verifique as credenciais');
      notifyListeners();
    }
  }
}
