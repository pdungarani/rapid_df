// To parse this JSON data, do
//
//     final getAssignModel = getAssignModelFromJson(jsonString);

import 'dart:convert';

GetAssignModel getAssignModelFromJson(String str) =>
    GetAssignModel.fromJson(json.decode(str));

String getAssignModelToJson(GetAssignModel data) => json.encode(data.toJson());

class GetAssignModel {
  String? message;
  List<GetAssignDatum>? data;
  int? status;
  bool? isSuccess;

  GetAssignModel({
    this.message,
    this.data,
    this.status,
    this.isSuccess,
  });

  factory GetAssignModel.fromJson(Map<String, dynamic> json) => GetAssignModel(
        message: json["Message"],
        data: json["Data"] == null
            ? []
            : List<GetAssignDatum>.from(
                json["Data"]!.map((x) => GetAssignDatum.fromJson(x))),
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

class GetAssignDatum {
  String? id;
  int? tNumber;
  String? tNumberInString;
  int? capacity;
  bool? isOccupied;
  bool? isCompleted;
  dynamic order;
  bool? isSelect;

  GetAssignDatum({
    this.id,
    this.tNumber,
    this.tNumberInString,
    this.capacity,
    this.isOccupied,
    this.isCompleted,
    this.order,
    this.isSelect = false,
  });

  factory GetAssignDatum.fromJson(Map<String, dynamic> json) => GetAssignDatum(
        id: json["_id"],
        tNumber: json["tNumber"],
        tNumberInString: json["tNumberInString"],
        capacity: json["capacity"],
        isOccupied: json["is_occupied"],
        isCompleted: json["is_completed"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "tNumber": tNumber,
        "tNumberInString": tNumberInString,
        "capacity": capacity,
        "is_occupied": isOccupied,
        "is_completed": isCompleted,
        "order": order,
      };
}
