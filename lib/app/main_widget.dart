import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:yugioh/app/core/services/cliente_http.dart';
import 'package:yugioh/app/modulos/modulo-comum/login/controller/login_controller.dart';
import 'package:yugioh/app/modulos/modulo-comum/login/repository/login_repository.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: ((_) => ClienteHTTP())),
        Provider(create: ((context) => LoginRepository(ReadContext(context).read<ClienteHTTP>()))),
        ChangeNotifierProvider(create: (context) => LoginController(ReadContext(context).read<LoginRepository>())),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      ),
    );
  }
}
