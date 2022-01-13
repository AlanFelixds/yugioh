import 'package:yugioh/src/models/CardModel.dart';
import 'package:yugioh/src/services/web_service.dart';
import 'package:yugioh/src/utils/app_const.dart';

class ProdutoRepository {
  WebService webService;
  ProdutoRepository(this.webService);

  Future<CardModel> listaRandomCards() async {
    final Map<String, dynamic> jsonResponse = await webService.getRequest(Const.urlRandomCard);
    return CardModel.fromJsonRandom(jsonResponse);
  }
}
