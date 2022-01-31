// To parse this JSON data, do
//
//     final hungryModel = hungryModelFromJson(jsonString);

import 'dart:convert';

List<HungryModel> hungryModelFromJson(String str) => List<HungryModel>.from(
    json.decode(str).map((x) => HungryModel.fromJson(x)));

String hungryModelToJson(List<HungryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HungryModel {
  HungryModel({
    this.id,
    this.name,
    this.assetsimage,
  });

  int? id;
  String? name;
  String? assetsimage;

  factory HungryModel.fromJson(Map<String, dynamic> json) => HungryModel(
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
