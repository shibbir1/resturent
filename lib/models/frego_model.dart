// To parse this JSON data, do
//
//     final fregoModel = fregoModelFromJson(jsonString);

import 'dart:convert';

List<FregoModel> fregoModelFromJson(String str) =>
    List<FregoModel>.from(json.decode(str).map((x) => FregoModel.fromJson(x)));

String fregoModelToJson(List<FregoModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FregoModel {
  FregoModel({
    this.id,
    this.name,
    this.assetsimage,
  });

  int? id;
  String? name;
  String? assetsimage;

  factory FregoModel.fromJson(Map<String, dynamic> json) => FregoModel(
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
