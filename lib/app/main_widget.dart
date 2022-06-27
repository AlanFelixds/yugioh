import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yugioh/app/modulos/login/controller/login_controller.dart';
import 'package:yugioh/app/modulos/login/page/login.dart';
// import 'package:yugioh/app/teste_page.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          '/': (context) => const Login(),
        },
      ),
    );
  }
}
