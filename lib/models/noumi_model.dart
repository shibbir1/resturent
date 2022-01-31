// To parse this JSON data, do
//
//     final noumiModel = noumiModelFromJson(jsonString);

import 'dart:convert';

List<NoumiModel> noumiModelFromJson(String str) =>
    List<NoumiModel>.from(json.decode(str).map((x) => NoumiModel.fromJson(x)));

String noumiModelToJson(List<NoumiModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NoumiModel {
  NoumiModel({
    this.id,
    this.name,
    this.assetsimage,
  });

  int? id;
  String? name;
  String? assetsimage;

  factory NoumiModel.fromJson(Map<String, dynamic> json) => NoumiModel(
        id: json["id"],
        name: json["Name"],
        assetsimage: json["assetsimage"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Name": name,
        "assetsimage": assetsimage,
      };
}
