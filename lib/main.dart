import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugioh/src/pages/home/home_binding.dart';
import 'package:yugioh/src/pages/home/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/home",
    getPages: [
      GetPage(name: '/home', page: () => HomePage(), binding: HomeBinding()),
    ],
  ));
}
