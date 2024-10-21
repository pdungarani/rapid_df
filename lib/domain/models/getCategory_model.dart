import 'dart:convert';

GetCategoryModel getCategoryModelFromJson(String str) =>
    GetCategoryModel.fromJson(json.decode(str));

String getCategoryModelToJson(GetCategoryModel data) =>
    json.encode(data.toJson());

class GetCategoryModel {
  String? message;
  List<CategoryDatum>? data;
  int? status;
  bool? isSuccess;

  GetCategoryModel({
    this.message,
    this.data,
    this.status,
    this.isSuccess,
  });

  factory GetCategoryModel.fromJson(Map<String, dynamic> json) =>
      GetCategoryModel(
        message: json["Message"],
        data: json["Data"] == null
            ? []
            : List<CategoryDatum>.from(json["Data"]!.map((x) => CategoryDatum.fromJson(x))),
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

class CategoryDatum {
  String? id;
  String? name;
  bool? status;
  int? createTimestamp;
  DateTime? createdAt;

  CategoryDatum({
    this.id,
    this.name,
    this.status,
    this.createTimestamp,
    this.createdAt,
  });

  factory CategoryDatum.fromJson(Map<String, dynamic> json) => CategoryDatum(
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
