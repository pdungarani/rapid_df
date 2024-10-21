import 'dart:convert';

GetKotModel getKotModelFromJson(String str) =>
    GetKotModel.fromJson(json.decode(str));

String getKotModelToJson(GetKotModel data) => json.encode(data.toJson());

class GetKotModel {
  String? message;
  List<KotDatum>? data;
  int? status;
  bool? isSuccess;

  GetKotModel({
    this.message,
    this.data,
    this.status,
    this.isSuccess,
  });

  factory GetKotModel.fromJson(Map<String, dynamic> json) => GetKotModel(
        message: json["Message"],
        data: json["Data"] == null
            ? []
            : List<KotDatum>.from(
                json["Data"]!.map((x) => KotDatum.fromJson(x))),
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

class KotDatum {
  String? id;
  int? kotNo;

  KotDatum({
    this.id,
    this.kotNo,
  });

  factory KotDatum.fromJson(Map<String, dynamic> json) => KotDatum(
        id: json["_id"],
        kotNo: json["kot_no"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "kot_no": kotNo,
      };
}
