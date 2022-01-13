import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yugioh/src/models/CardModel.dart';
import 'package:yugioh/src/pages/home/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository homeRepository;

  @override
  void onInit() {
    cardDay();
    super.onInit();
  }

  HomeController(this.homeRepository);

  Rx<CardModel> cardModel = CardModel().obs;

  Future<void> cardDay() async {
    cardModel.value = await homeRepository.cardDay();
  }
}
