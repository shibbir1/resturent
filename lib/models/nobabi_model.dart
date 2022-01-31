// To parse this JSON data, do
//
//     final nobabiModel = nobabiModelFromJson(jsonString);

import 'dart:convert';

List<NobabiModel> nobabiModelFromJson(String str) => List<NobabiModel>.from(
    json.decode(str).map((x) => NobabiModel.fromJson(x)));

String nobabiModelToJson(List<NobabiModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NobabiModel {
  NobabiModel({
    this.id,
    this.name,
    this.assetsimage,
  });

  int? id;
  String? name;
  String? assetsimage;

  factory NobabiModel.fromJson(Map<String, dynamic> json) => NobabiModel(
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
