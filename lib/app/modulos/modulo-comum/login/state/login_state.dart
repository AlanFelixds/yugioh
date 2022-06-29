import 'package:flutter/material.dart';

enum LoginStatus {
  inicial,
  carregando,
  completo,
  erro,
}

class LoginState extends ChangeNotifier {
  LoginStatus state;
  LoginState({required this.state});

  LoginState.inicial() : this(state: LoginStatus.inicial);
}
