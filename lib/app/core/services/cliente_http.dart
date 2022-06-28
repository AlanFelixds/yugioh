import 'package:get/get.dart';

class ClienteHTTP extends GetConnect {
  dynamic configurationHttp() async {
    httpClient.baseUrl = "http://localhost:5000";
    httpClient.defaultContentType = "application/json;charset=UTF-8";
  }

  Future<dynamic> postRequest({required String rota, required Map body}) async {
    await configurationHttp();
    try {
      Response response = await post(rota, body);
      return response.body;
    } catch (e) {
      return "$e";
    }
  }

  Future<dynamic> getRequest({required String rota}) async {
    await configurationHttp();
    try {
      Response response = await get(rota);
      return response.body;
    } catch (e) {
      return "$e";
    }
  }
}
