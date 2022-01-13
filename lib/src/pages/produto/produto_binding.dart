import 'package:get/get.dart';
import 'package:yugioh/src/pages/produto/produto_controller.dart';
import 'package:yugioh/src/pages/produto/produto_repository.dart';
import 'package:yugioh/src/services/web_service.dart';

class ProdutoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProdutoRepository>(() => ProdutoRepository(WebService()));
    Get.lazyPut<ProdutoController>(() => ProdutoController(Get.find()));
  }
}
