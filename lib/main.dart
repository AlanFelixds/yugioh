import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugioh/src/utils/app_routes.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/home",
    getPages: Routes.pages,
  ));
}
