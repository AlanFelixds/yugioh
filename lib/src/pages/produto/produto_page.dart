import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugioh/src/pages/produto/produto_controller.dart';

class ProdutoPage extends GetResponsiveView<ProdutoController> {
  ProdutoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Wrap(
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
                  child: Image.network(controller.listaCards[index].urlImage ?? "https://cdn.tekkx.com/wp-content/uploads/2021/09/08105856/yugioh-card-back.png"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
