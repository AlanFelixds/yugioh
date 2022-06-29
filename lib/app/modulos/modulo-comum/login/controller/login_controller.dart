import 'package:flutter/material.dart';
import 'package:yugioh/app/core/models/auth_model.dart';
import 'package:yugioh/app/core/models/usuario_model.dart';
import 'package:yugioh/app/modulos/modulo-comum/login/repository/login_repository.dart';
import 'package:yugioh/app/modulos/modulo-comum/login/state/login_state.dart';

class LoginController extends LoginState {
  final LoginRepository _loginRepository;

  LoginController(this._loginRepository) : super(state: LoginStatus.inicial);

  Future<void> logar({required String usuario, required String senha}) async {
    // await Future.delayed(const Duration(seconds: 5), () {});
    try {
      state = LoginStatus.carregando;
      notifyListeners();
      final authModel = AuthModel();
      authModel.email = usuario;
      authModel.senha = senha;

      usuarioIn = await _loginRepository.logar(authModel);
      state = LoginStatus.completo;
      notifyListeners();
    } catch (e) {
      state = LoginStatus.erro;
      debugPrint('erro ao realizar login, verifique as credenciais');
      notifyListeners();
    }
  }
}
