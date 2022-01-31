// To parse this JSON data, do
//
//     final greenModel = greenModelFromJson(jsonString);

import 'dart:convert';

List<GreenModel> greenModelFromJson(String str) =>
    List<GreenModel>.from(json.decode(str).map((x) => GreenModel.fromJson(x)));

String greenModelToJson(List<GreenModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GreenModel {
  GreenModel({
    this.id,
    this.name,
    this.assetsimage,
  });

  int? id;
  String? name;
  String? assetsimage;

  factory GreenModel.fromJson(Map<String, dynamic> json) => GreenModel(
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
