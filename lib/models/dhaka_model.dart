// To parse this JSON data, do
//
//     final dhakaModel = dhakaModelFromJson(jsonString);

import 'dart:convert';

List<DhakaModel> dhakaModelFromJson(String str) =>
    List<DhakaModel>.from(json.decode(str).map((x) => DhakaModel.fromJson(x)));

String dhakaModelToJson(List<DhakaModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DhakaModel {
  DhakaModel({
    this.id,
    this.name,
    this.assetsimage,
  });

  int? id;
  String? name;
  String? assetsimage;

  factory DhakaModel.fromJson(Map<String, dynamic> json) => DhakaModel(
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
