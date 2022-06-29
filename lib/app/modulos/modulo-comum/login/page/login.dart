import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:yugioh/app/core/models/usuario_model.dart';
import 'package:yugioh/app/core/widgets/button/custom_elevated_button.dart';
import 'package:provider/provider.dart';
import 'package:yugioh/app/core/widgets/loader/card_loader.dart';
import 'package:yugioh/app/core/widgets/text-field/custom_text_field.dart';
import 'package:yugioh/app/modulos/modulo-comum/login/controller/login_controller.dart';
import 'package:yugioh/app/modulos/modulo-comum/login/state/login_state.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isBack = true;
  double angle = 0;
  final usuarioEC = TextEditingController(text: 'alan@gmail.com');
  final senhaEC = TextEditingController(text: 'alan');

  @override
  void initState() {
    super.initState();
    final controller = ReadContext(context).read<LoginController>();

    controller.addListener(() {
      if (controller.state == LoginStatus.completo) {
        if (usuarioIn!.permissao == 'servidor') {
          Modular.to.navigate('/servidor/');
        } else if (usuarioIn!.permissao == 'dep') {
          Modular.to.navigate('/dep/');
        }
      }
    });
  }

  @override
  void dispose() {
    usuarioEC.dispose();
    senhaEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = WatchContext(context).watch<LoginController>();

    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
          ),
          width: 300,
          height: 240,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                textController: usuarioEC,
                label: 'Usuário',
              ),
              const SizedBox(height: 10),
              CustomTextField(
                textController: senhaEC,
                label: 'Senha',
              ),
              const SizedBox(height: 10),
              CustomElevatedButton(
                label: 'Entrar',
                loader: controller.state == LoginStatus.carregando ? const LoaderCard() : const SizedBox(),
                onPressed: () {
                  controller.logar(usuario: usuarioEC.text, senha: senhaEC.text);
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
