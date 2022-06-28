import 'package:flutter/material.dart';
import 'package:yugioh/app/core/models/usuario_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 100,
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(usuarioIn?.nome ?? ""),
                Text(usuarioIn?.email ?? ""),
              ],
            ),
            // child: ListTile(
            //   title: Text(usuarioIn?.nome ?? ""),
            //   subtitle: Text(usuarioIn?.email ?? ""),
            // ),
          ),
        ),
      ),
    );
  }
}
