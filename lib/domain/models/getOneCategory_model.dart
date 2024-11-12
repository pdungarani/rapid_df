import 'dart:convert';

import 'package:flutter/material.dart';

GetOneCategoryModel getOneCategoryModelFromJson(String str) =>
    GetOneCategoryModel.fromJson(json.decode(str));

class GetOneCategoryModel {
  String? message;
  List<OneCategoryDatum>? data;
  int? status;
  bool? isSuccess;

  GetOneCategoryModel({
    this.message,
    this.data,
    this.status,
    this.isSuccess,
  });

  factory GetOneCategoryModel.fromJson(Map<String, dynamic> json) =>
      GetOneCategoryModel(
        message: json["Message"],
        data: json["Data"] == null
            ? []
            : List<OneCategoryDatum>.from(
                json["Data"]!.map((x) => OneCategoryDatum.fromJson(x))),
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

class OneCategoryDatum {
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

  OneCategoryDatum({
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

  factory OneCategoryDatum.fromJson(Map<String, dynamic> json) =>
      OneCategoryDatum(
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
