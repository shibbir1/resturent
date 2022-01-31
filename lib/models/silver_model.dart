// To parse this JSON data, do
//
//     final silverModel = silverModelFromJson(jsonString);

import 'dart:convert';

List<SilverModel> silverModelFromJson(String str) => List<SilverModel>.from(
    json.decode(str).map((x) => SilverModel.fromJson(x)));

String silverModelToJson(List<SilverModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SilverModel {
  SilverModel({
    this.id,
    this.name,
    this.assetsimage,
  });

  int? id;
  String? name;
  String? assetsimage;

  factory SilverModel.fromJson(Map<String, dynamic> json) => SilverModel(
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
