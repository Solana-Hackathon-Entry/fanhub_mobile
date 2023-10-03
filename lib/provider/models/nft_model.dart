// To parse this JSON data, do
//
//     final nftModel = nftModelFromJson(jsonString);

import 'dart:convert';

NftModel nftModelFromJson(String str) => NftModel.fromJson(json.decode(str));

String nftModelToJson(NftModel data) => json.encode(data.toJson());

class NftModel {
  String? name;
  String? description;
  String? symbol;
  List<Attribute>? attributes;
  String? image;

  NftModel({
    this.name,
    this.description,
    this.symbol,
    this.attributes,
    this.image,
  });

  factory NftModel.fromJson(Map<String, dynamic> json) => NftModel(
    name: json["name"],
    description: json["description"],
    symbol: json["symbol"],
    attributes: json["attributes"] == null ? [] : List<Attribute>.from(json["attributes"]!.map((x) => Attribute.fromJson(x))),
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": description,
    "symbol": symbol,
    "attributes": attributes == null ? [] : List<dynamic>.from(attributes!.map((x) => x.toJson())),
    "image": image,
  };
}

class Attribute {
  String? traitType;
  String? value;

  Attribute({
    this.traitType,
    this.value,
  });

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
    traitType: json["trait_type"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "trait_type": traitType,
    "value": value,
  };
}
