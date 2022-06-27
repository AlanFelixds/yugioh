import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ad_units), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.ad_units), label: "Produtos"),
          BottomNavigationBarItem(icon: Icon(Icons.ad_units), label: "Carrinho"),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [],
          ),
        ),
      ),
    );
  }
}

// class HomePage extends GetResponsiveView<HomeController> {
//   HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: Get.width,
//                 height: Get.height * .2,
//                 color: Colors.lightBlue[200],
//                 child: Obx(() {
//                   return ListView.builder(
//                     itemCount: controller.listaRandom.length,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 1.0),
//                         child: Image.network(
//                           controller.listaRandom[index].urlImage ??
//                               "https://cdn.tekkx.com/wp-content/uploads/2021/09/08105856/yugioh-card-back.png",
//                           width: 80,
//                           height: 150,
//                         ),
//                       );
//                     },
//                     scrollDirection: Axis.horizontal,
//                   );
//                 }),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 8.0),
//                 child: Container(
//                   width: 200,
//                   height: 230,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     color: Colors.grey,
//                   ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Obx(() {
//                         return Text(controller.cardModel.value.nome ?? "");
//                       }),
//                       Obx(
//                         () => Image.network(
//                           controller.cardModel.value.urlImage ??
//                               "https://cdn.tekkx.com/wp-content/uploads/2021/09/08105856/yugioh-card-back.png",
//                           width: 200,
//                           height: 200,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 width: Get.width * .7,
//                 child: TextFormField(
//                   controller: controller.cardName,
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   controller.buscarCard();
//                 },
//                 child: const Text("Buscar"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
