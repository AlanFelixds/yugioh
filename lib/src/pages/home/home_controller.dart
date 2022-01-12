import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:yugioh/src/models/CardModel.dart';
import 'package:yugioh/src/pages/home/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository homeRepository;

  @override
  void onInit() {
    randomCards();
    super.onInit();
  }

  HomeController(this.homeRepository);

  Rx<CardModel> cardModel = CardModel().obs;
  final TextEditingController cardName = TextEditingController();

  Future<void> buscarCard() async {
    cardModel.value = await homeRepository.searchCard(cardName.value.text);
    // data.value = cardModel.urlImage.toString();
  }

  Future<void> randomCards() async {
    cardModel.value = await homeRepository.randomCards();

    // homeRepository.randomCards();
    // return cardModel.value.urlImage.toString();
  }
}
