// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'dart:convert';

List<Category> categoryFromJson(String str) =>
    List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

String categoryToJson(List<Category> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category {
  Category({
    required this.id,
    required this.name,
    required this.nameArabic,
    required this.imageUrl,
    this.parentId,
    required this.isActive,
    required this.isAvailableInApp,
  });

  int id;
  String name;
  String nameArabic;
  String imageUrl;
  dynamic parentId;
  int isActive;
  int isAvailableInApp;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        nameArabic: json["name_arabic"],
        imageUrl: json["image_url"],
        parentId: json["parent_id"],
        isActive: json["IS_active"],
        isAvailableInApp: json["IS_available_in_app"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "name_arabic": nameArabic,
        "image_url": imageUrl,
        "parent_id": parentId,
        "IS_active": isActive,
        "IS_available_in_app": isAvailableInApp,
      };
}
