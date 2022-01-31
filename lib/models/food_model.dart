// To parse this JSON data, do
//
//     final foodModel = foodModelFromJson(jsonString);

import 'dart:convert';

List<FoodModel> foodModelFromJson(String str) =>
    List<FoodModel>.from(json.decode(str).map((x) => FoodModel.fromJson(x)));

String foodModelToJson(List<FoodModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FoodModel {
  FoodModel({
    this.id,
    this.name,
    this.assetsimage,
  });

  int? id;
  String? name;
  String? assetsimage;

  factory FoodModel.fromJson(Map<String, dynamic> json) => FoodModel(
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
