import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:yugioh/app/core/models/usuario_model.dart';
import 'package:yugioh/app/core/utils/extension/capitalize.dart';
import 'package:yugioh/app/core/widgets/menu/menu_servidor.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 300,
              height: 70,
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text(usuarioIn?.nome?.capitalize() ?? ""),
                  subtitle: Text(usuarioIn?.permissao ?? ""),
                  trailing: const CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage("assets/images/yu.jpg"),
                    radius: 30,
                  ),
                ),
              ),
            ),
          ),
          Menu(permissao: usuarioIn!.permissao!),
          const SizedBox(height: 10),
          // ElevatedButton(
          //   onPressed: () {
          //     Modular.to.navigate('/config');
          //   },
          //   child: Row(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       const Text("cor"),
          //       const SizedBox(width: 20),
          //       Container(width: 10, height: 10, color: Colors.yellow),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget clickME(Color cor) {
    return GestureDetector(
      onTap: () {
        Modular.to.navigate('/config', arguments: cor);
      },
      child: Hero(
        tag: 'tag',
        child: Container(width: 50, height: 50, color: cor),
      ),
    );
  }
}
