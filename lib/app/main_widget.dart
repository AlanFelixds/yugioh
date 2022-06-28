import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yugioh/app/core/services/cliente_http.dart';
import 'package:yugioh/app/modulos/home/home_page.dart';
import 'package:yugioh/app/modulos/login/controller/login_controller.dart';
import 'package:yugioh/app/modulos/login/page/login.dart';
import 'package:yugioh/app/modulos/login/repository/login_repository.dart';
// import 'package:yugioh/app/teste_page.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: ((_) => ClienteHTTP())),
        Provider(create: ((context) => LoginRepository(context.read<ClienteHTTP>()))),
        ChangeNotifierProvider(create: (context) => LoginController(context.read<LoginRepository>())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          '/': (context) => const Login(),
          '/home': (context) => const HomePage(),
        },
      ),
    );
  }
}
