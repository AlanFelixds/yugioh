import 'package:flutter/material.dart';
import 'package:yugioh/app/core/widgets/button/custom_elevated_button.dart';
import 'package:yugioh/app/core/widgets/card-progress-indicator/card_progress_indicator.dart';
import 'package:yugioh/app/core/widgets/text-field/custom_text_field.dart';
import 'package:yugioh/app/modulos/login/controller/login_controller.dart';
import 'package:yugioh/app/modulos/login/state/login_state.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late final AnimationController aniController;
  bool isBack = true;
  double angle = 0;

  void _flip() {
    // setState(() {
    //   angle = (angle + 3.14) % (2 * 3.14);
    // });
    setState(() {
      isBack = !isBack;
    });
  }

  @override
  Widget build(BuildContext context) {
    final usuarioEC = TextEditingController(text: 'depp');
    final senhaEC = TextEditingController(text: 'depp');
    final controller = LoginController();

    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black26,
          ),
          width: 300,
          height: 280,
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
                  return const CardProgressIndicator();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
