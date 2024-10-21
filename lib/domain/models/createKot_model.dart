import 'dart:convert';

CreateKotModel createKotModelFromJson(String str) =>
    CreateKotModel.fromJson(json.decode(str));

class CreateKotModel {
  String? message;
  CreateKotData? data;
  int? status;
  bool? isSuccess;

  CreateKotModel({
    this.message,
    this.data,
    this.status,
    this.isSuccess,
  });

  factory CreateKotModel.fromJson(Map<String, dynamic> json) => CreateKotModel(
        message: json["Message"],
        data:
            json["Data"] == null ? null : CreateKotData.fromJson(json["Data"]),
        status: json["Status"],
        isSuccess: json["IsSuccess"],
      );

  Map<String, dynamic> toJson() => {
        "Message": message,
        "Data": data?.toJson(),
        "Status": status,
        "IsSuccess": isSuccess,
      };
}

class CreateKotData {
  String? tableId;
  String? kotId;

  CreateKotData({
    this.tableId,
    this.kotId,
  });

  factory CreateKotData.fromJson(Map<String, dynamic> json) => CreateKotData(
        tableId: json["tableId"],
        kotId: json["kotId"],
      );

  Map<String, dynamic> toJson() => {
        "tableId": tableId,
        "kotId": kotId,
      };
}
