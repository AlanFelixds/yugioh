import 'package:yugioh/src/models/CardModel.dart';
import 'package:yugioh/src/services/web_service.dart';
import 'package:yugioh/src/utils/app_const.dart';

class HomeRepository {
  final WebService webService;

  HomeRepository(this.webService);

  Future<CardModel> searchCard(String cardName) async {
    final Map<String, dynamic> jsonResponse = await webService.getRequest("${Const.urlAPI}?name=$cardName");
    return CardModel.fromJson(jsonResponse);
    // return (response.body['data'][0]['card_images'][0]['image_url']);
  }

  Future<CardModel> cardDay() async {
    final Map<String, dynamic> jsonResponse = await webService.getRequest(Const.urlRandomCard);
    return CardModel.fromJsonRandom(jsonResponse);
  }
}
