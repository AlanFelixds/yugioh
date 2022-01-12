import 'dart:convert';

class CardModel {
  String? nome;
  int? atk;
  int? def;
  String? urlImage;

  CardModel({this.nome, this.atk, this.def, this.urlImage});

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'atk': atk,
      'def': def,
      'urlImage': urlImage,
    };
  }

  factory CardModel.fromMap(Map<String, dynamic> map) {
    return CardModel(
      nome: map['nome'],
      atk: map['atk'],
      def: map['def'],
      urlImage: map['urlImage'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      nome: json['data'][0]['name'] == null
          ? null
          : json['data'][0]['name'] as String,
      atk:
          json['data'][0]['atk'] == null ? null : json['data'][0]['atk'] as int,
      def:
          json['data'][0]['def'] == null ? null : json['data'][0]['def'] as int,
      urlImage: json['data'][0]['card_images'][0]['image_url'] == null
          ? null
          : json['data'][0]['card_images'][0]['image_url'] as String,
    );
  }

  factory CardModel.fromJsonRandom(Map<String, dynamic> json) {
    return CardModel(
      nome: json['name'] == null ? null : json['name'] as String,
      atk: json['atk'] == null ? null : json['atk'] as int,
      def: json['def'] == null ? null : json['def'] as int,
      urlImage: json['card_images'][0]['image_url'] == null
          ? null
          : json['card_images'][0]['image_url_small'] as String,
    );
  }

  // return (response.body['data'][0]['card_images'][0]['image_url']);
}
