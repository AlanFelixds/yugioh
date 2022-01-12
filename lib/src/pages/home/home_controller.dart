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
  RxList<CardModel> listaRandom = <CardModel>[].obs;
  final TextEditingController cardName = TextEditingController();

  Future<void> buscarCard() async {
    cardModel.value = await homeRepository.searchCard(cardName.value.text);
  }

  Future<void> randomCards() async {
    // cardModel.value = await homeRepository.randomCards();
    for (int i = 0; i < 5; i++) {
      listaRandom.add(await homeRepository.randomCards());
    }
    print(listaRandom);
  }
}
