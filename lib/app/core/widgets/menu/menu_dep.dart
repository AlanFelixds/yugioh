import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final String permissao;
  const Menu({Key? key, required this.permissao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: permissao == 'dep',
            child: SizedBox(
              width: 100,
              height: 50,
              child: Card(
                color: Colors.green[200],
                child: const Center(child: Text("Root")),
              ),
            ),
          ),
          Visibility(
            visible: permissao == 'servidor',
            child: SizedBox(
              width: 100,
              height: 50,
              child: Card(
                color: Colors.green[200],
                child: const Center(child: Text("All cards")),
              ),
            ),
          ),
          Visibility(
            visible: permissao == 'servidor',
            child: SizedBox(
              width: 100,
              height: 50,
              child: Card(
                color: Colors.amber[200],
                child: const Center(child: Text("Buscar cards")),
              ),
            ),
          ),
          Visibility(
            visible: permissao == 'servidor',
            child: SizedBox(
              width: 100,
              height: 50,
              child: Card(
                color: Colors.blue[200],
                child: const Center(child: Text("Vender cards")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
