import 'package:flutter_modular/flutter_modular.dart';
import 'package:yugioh/app/modulos/modulo-comum/login/page/login.dart';
import 'package:yugioh/app/modulos/modulo-dep/modulo_dep.dart';
import 'package:yugioh/app/modulos/modulo-servidor/modulo_servidor.dart';

class MainModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const Login(), transition: TransitionType.noTransition),
        ModuleRoute('/dep/', module: ModuloDep()),
        ModuleRoute('/servidor/', module: ModuloServidor()),
      ];
}
