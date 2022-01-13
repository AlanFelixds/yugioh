import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugioh/src/models/CardModel.dart';
import 'package:yugioh/src/pages/produto/produto_repository.dart';

class ProdutoController extends GetxController {
  ProdutoRepository produtoRepository;
  ProdutoController(this.produtoRepository);

  final TextEditingController cardName = TextEditingController();
  RxList<CardModel> listaCards = <CardModel>[].obs;

  Future<void> randomCards() async {
    // cardModel.value = await homeRepository.randomCards();
    for (int i = 0; i < 10; i++) {
      listaCards.add(await produtoRepository.listaRandomCards());
    }
  }
}
