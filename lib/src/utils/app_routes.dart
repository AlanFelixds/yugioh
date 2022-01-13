import 'package:get/get.dart';
import 'package:yugioh/src/pages/home/home_binding.dart';
import 'package:yugioh/src/pages/home/home_page.dart';
import 'package:yugioh/src/pages/produto/produto_binding.dart';
import 'package:yugioh/src/pages/produto/produto_page.dart';

class Routes {
  static const String home = '/home';
  static const String produto = '/produtos';

  static List<GetPage> pages = [
    GetPage(name: home, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: produto, page: () => ProdutoPage(), binding: ProdutoBinding()),
  ];
}
