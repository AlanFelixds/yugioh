import 'package:yugioh/app/core/models/auth_model.dart';
import 'package:yugioh/app/core/models/usuario_model.dart';
import 'package:yugioh/app/core/services/cliente_http.dart';

class LoginRepository {
  final ClienteHTTP _clienteHTTP;
  LoginRepository(this._clienteHTTP);

  Future<UsuarioModel> logar(AuthModel authModel) async {
    final resultado = await _clienteHTTP.postRequest(rota: '/login', body: authModel.toMap());
    return UsuarioModel.fromMap(resultado);
  }
}
