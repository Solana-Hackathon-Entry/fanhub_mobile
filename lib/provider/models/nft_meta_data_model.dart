// To parse this JSON data, do
//
//     final nftModel = nftModelFromJson(jsonString);

import 'dart:convert';

NFTMetaDataModel nftModelFromJson(String str) => NFTMetaDataModel.fromJson(json.decode(str));

String nftModelToJson(NFTMetaDataModel data) => json.encode(data.toJson());

class NFTMetaDataModel {
  String? model;
  String? address;
  String? mintAddress;
  String? updateAuthorityAddress;
  dynamic json;
  bool? jsonLoaded;
  String? name;
  String? symbol;
  String? uri;
  bool? isMutable;
  bool? primarySaleHappened;
  int? sellerFeeBasisPoints;
  int? editionNonce;
  List<Creator>? creators;
  int? tokenStandard;
  dynamic collection;
  dynamic collectionDetails;
  dynamic uses;
  dynamic programmableConfig;

  NFTMetaDataModel({
    this.model,
    this.address,
    this.mintAddress,
    this.updateAuthorityAddress,
    this.json,
    this.jsonLoaded,
    this.name,
    this.symbol,
    this.uri,
    this.isMutable,
    this.primarySaleHappened,
    this.sellerFeeBasisPoints,
    this.editionNonce,
    this.creators,
    this.tokenStandard,
    this.collection,
    this.collectionDetails,
    this.uses,
    this.programmableConfig,
  });

  factory NFTMetaDataModel.fromJson(Map<String, dynamic> json) => NFTMetaDataModel(
    model: json["model"],
    address: json["address"],
    mintAddress: json["mintAddress"],
    updateAuthorityAddress: json["updateAuthorityAddress"],
    json: json["json"],
    jsonLoaded: json["jsonLoaded"],
    name: json["name"],
    symbol: json["symbol"],
    uri: json["uri"],
    isMutable: json["isMutable"],
    primarySaleHappened: json["primarySaleHappened"],
    sellerFeeBasisPoints: json["sellerFeeBasisPoints"],
    editionNonce: json["editionNonce"],
    creators: json["creators"] == null ? [] : List<Creator>.from(json["creators"]!.map((x) => Creator.fromJson(x))),
    tokenStandard: json["tokenStandard"],
    collection: json["collection"],
    collectionDetails: json["collectionDetails"],
    uses: json["uses"],
    programmableConfig: json["programmableConfig"],
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "address": address,
    "mintAddress": mintAddress,
    "updateAuthorityAddress": updateAuthorityAddress,
    "json": json,
    "jsonLoaded": jsonLoaded,
    "name": name,
    "symbol": symbol,
    "uri": uri,
    "isMutable": isMutable,
    "primarySaleHappened": primarySaleHappened,
    "sellerFeeBasisPoints": sellerFeeBasisPoints,
    "editionNonce": editionNonce,
    "creators": creators == null ? [] : List<dynamic>.from(creators!.map((x) => x.toJson())),
    "tokenStandard": tokenStandard,
    "collection": collection,
    "collectionDetails": collectionDetails,
    "uses": uses,
    "programmableConfig": programmableConfig,
  };
}

class Creator {
  String? address;
  bool? verified;
  int? share;

  Creator({
    this.address,
    this.verified,
    this.share,
  });

  factory Creator.fromJson(Map<String, dynamic> json) => Creator(
    address: json["address"],
    verified: json["verified"],
    share: json["share"],
  );

  Map<String, dynamic> toJson() => {
    "address": address,
    "verified": verified,
    "share": share,
  };
}
