import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UsuarioModel {
  String? email;
  String? nome;
  String? permissao;
  String? token;

  UsuarioModel({
    this.email,
    this.nome,
    this.permissao,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'nome': nome,
      'permissao': permissao,
      'token': token,
    };
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    return UsuarioModel(
      email: map['email'] != null ? map['email'] as String : null,
      nome: map['nome'] != null ? map['nome'] as String : null,
      permissao: map['permissao'] != null ? map['permissao'] as String : null,
      token: map['token'] != null ? map['token'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromJson(String source) => UsuarioModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
