// To parse this JSON data, do
//
//     final helloModel = helloModelFromJson(jsonString);

import 'dart:convert';

List<HelloModel> helloModelFromJson(String str) =>
    List<HelloModel>.from(json.decode(str).map((x) => HelloModel.fromJson(x)));

String helloModelToJson(List<HelloModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HelloModel {
  HelloModel({
    this.id,
    this.name,
    this.assetsimage,
  });

  int? id;
  String? name;
  String? assetsimage;

  factory HelloModel.fromJson(Map<String, dynamic> json) => HelloModel(
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
