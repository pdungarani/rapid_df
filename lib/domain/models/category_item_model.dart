// To parse this JSON data, do
//
//     final categoryItemModel = categoryItemModelFromJson(jsonString);

import 'dart:convert';

CategoryItemModel categoryItemModelFromJson(String str) =>
    CategoryItemModel.fromJson(json.decode(str));

String categoryItemModelToJson(CategoryItemModel data) =>
    json.encode(data.toJson());

class CategoryItemModel {
  String? message;
  List<CategoryItemData>? data;
  int? status;
  bool? isSuccess;

  CategoryItemModel({
    this.message,
    this.data,
    this.status,
    this.isSuccess,
  });

  factory CategoryItemModel.fromJson(Map<String, dynamic> json) =>
      CategoryItemModel(
        message: json["Message"],
        data: json["Data"] == null
            ? []
            : List<CategoryItemData>.from(
                json["Data"]!.map((x) => CategoryItemData.fromJson(x))),
        status: json["Status"],
        isSuccess: json["IsSuccess"],
      );

  Map<String, dynamic> toJson() => {
        "Message": message,
        "Data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "Status": status,
        "IsSuccess": isSuccess,
      };
}

class CategoryItemData {
  String? id;
  Category? category;
  String? name;
  int? code;
  String? codeInString;
  int? price;
  bool? status;
  int? createTimestamp;
  DateTime? createdAt;
  int itemCount;
  String? remark;
  bool isAdded;

  CategoryItemData({
    this.id,
    this.category,
    this.name,
    this.code,
    this.codeInString,
    this.price,
    this.status,
    this.createTimestamp,
    this.createdAt,
    this.itemCount = 0,
    this.remark = "",
    this.isAdded = false,
  });

  factory CategoryItemData.fromJson(Map<String, dynamic> json) =>
      CategoryItemData(
        id: json["_id"],
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
        name: json["name"],
        code: json["code"],
        codeInString: json["codeInString"],
        price: json["price"],
        status: json["status"],
        createTimestamp: json["create_timestamp"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "category": category?.toJson(),
        "name": name,
        "code": code,
        "codeInString": codeInString,
        "price": price,
        "status": status,
        "create_timestamp": createTimestamp,
        "createdAt": createdAt?.toIso8601String(),
      };
}

class Category {
  String? id;
  String? name;
  bool? status;
  int? createTimestamp;
  DateTime? createdAt;

  Category({
    this.id,
    this.name,
    this.status,
    this.createTimestamp,
    this.createdAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["_id"],
        name: json["name"],
        status: json["status"],
        createTimestamp: json["create_timestamp"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "status": status,
        "create_timestamp": createTimestamp,
        "createdAt": createdAt?.toIso8601String(),
      };
}
