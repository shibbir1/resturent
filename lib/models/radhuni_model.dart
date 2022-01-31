// To parse this JSON data, do
//
//     final radhuniModel = radhuniModelFromJson(jsonString);

import 'dart:convert';

List<RadhuniModel> radhuniModelFromJson(String str) => List<RadhuniModel>.from(
    json.decode(str).map((x) => RadhuniModel.fromJson(x)));

String radhuniModelToJson(List<RadhuniModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RadhuniModel {
  RadhuniModel({
    this.id,
    this.name,
    this.assetsimage,
  });

  int? id;
  String? name;
  String? assetsimage;

  factory RadhuniModel.fromJson(Map<String, dynamic> json) => RadhuniModel(
        id: json["id"],
        name: json["name"],
        assetsimage: json["assetsimage"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "assetsimage": assetsimage,
      };
}
