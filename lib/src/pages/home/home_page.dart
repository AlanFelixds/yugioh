import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugioh/src/pages/home/home_controller.dart';

class HomePage extends GetResponsiveView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Get.width,
                height: Get.height * .2,
                color: Colors.lightBlue[200],
                child: Column(
                  children: [
                    Obx(
                      () => Text(controller.cardModel.value.nome ?? ""),
                    ),
                    Obx(
                      () => Image.network(
                        controller.cardModel.value.urlImage ??
                            "https://cdn.tekkx.com/wp-content/uploads/2021/09/08105856/yugioh-card-back.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey,
                ),
                child: Column(
                  children: [
                    Text(controller.cardModel.value.nome ?? ""),
                    Obx(
                      () => Image.network(
                        controller.cardModel.value.urlImage ??
                            "https://cdn.tekkx.com/wp-content/uploads/2021/09/08105856/yugioh-card-back.png",
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: Get.width * .7,
                child: TextFormField(
                  controller: controller.cardName,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.buscarCard();
                },
                child: const Text("Buscar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
