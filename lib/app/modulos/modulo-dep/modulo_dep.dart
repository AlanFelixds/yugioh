import 'package:flutter_modular/flutter_modular.dart';
import 'package:yugioh/app/modulos/modulo-dep/home/page/home_page.dart';

class ModuloDep extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, _) => const HomePage(), transition: TransitionType.noTransition),
      ];
}
