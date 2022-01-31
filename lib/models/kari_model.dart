// To parse this JSON data, do
//
//     final kariModel = kariModelFromJson(jsonString);

import 'dart:convert';

List<KariModel> kariModelFromJson(String str) =>
    List<KariModel>.from(json.decode(str).map((x) => KariModel.fromJson(x)));

String kariModelToJson(List<KariModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class KariModel {
  KariModel({
    this.id,
    this.name,
    this.assetsimage,
  });

  int? id;
  String? name;
  String? assetsimage;

  factory KariModel.fromJson(Map<String, dynamic> json) => KariModel(
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
