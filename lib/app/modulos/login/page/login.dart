import 'package:flutter/material.dart';
import 'package:yugioh/app/core/widgets/button/custom_elevated_button.dart';
import 'package:provider/provider.dart';
import 'package:yugioh/app/core/widgets/loader/card_loader.dart';
import 'package:yugioh/app/core/widgets/text-field/custom_text_field.dart';
import 'package:yugioh/app/modulos/login/controller/login_controller.dart';
import 'package:yugioh/app/modulos/login/state/login_state.dart';

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
    final controller = context.read<LoginController>();

    controller.addListener(() {
      if (controller.state == LoginStatus.completo) {
        Navigator.of(context).pushReplacementNamed('/home');
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
    final controller = context.watch<LoginController>();

    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
          ),
          width: 300,
          height: 300,
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
                onPressed: () {
                  controller.logar(usuario: usuarioEC.text, senha: senhaEC.text);
                },
              ),
              const SizedBox(height: 20),
              AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    if (controller.state == LoginStatus.carregando) {
                      return const LoaderCard();
                    }

                    if (controller.state == LoginStatus.erro) {
                      return Container(width: 10, height: 10, color: Colors.red);
                    }

                    return Container(width: 10, height: 10, color: Colors.green);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
