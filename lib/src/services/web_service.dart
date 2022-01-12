import 'package:get/get.dart';

class WebService extends GetConnect {
  dynamic configurationHttp() async {
    httpClient.baseUrl = "";
    httpClient.defaultContentType = "application/json;charset=UTF-8";
  }

  Future<dynamic> postRequest(Map body, String route) async {
    try {
      await configurationHttp();
      Response response = await post(route, body);
      return response.body;
    } catch (e) {
      return "$e";
    }
  }

  Future<dynamic> getRequest(String route) async {
    try {
      await configurationHttp();
      Response response = await get(route);
      return response.body;
    } catch (e) {
      return "$e";
    }
  }
}
