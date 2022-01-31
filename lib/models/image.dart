// To parse this JSON data, do
//
//     final imageModel = imageModelFromJson(jsonString);

import 'dart:convert';

List<ImageModel> imageModelFromJson(String str) =>
    List<ImageModel>.from(json.decode(str).map((x) => ImageModel.fromJson(x)));

String imageModelToJson(List<ImageModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ImageModel {
  ImageModel({
    this.id,
    this.name,
    this.assetsImage,
  });

  int? id;
  String? name;
  String? assetsImage;

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        id: json["id"],
        name: json["Name"],
        assetsImage: json["assetsimage"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Name": name,
        "assetsimage": assetsImage,
      };
}
