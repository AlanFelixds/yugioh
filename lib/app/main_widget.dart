import 'package:flutter/material.dart';
import 'package:yugioh/app/modulos/login/page/login.dart';
import 'package:yugioh/app/teste_page.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const TestePage(),
      },
    );
  }
}
