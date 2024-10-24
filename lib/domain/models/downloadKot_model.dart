import 'dart:convert';

DownloadKotModel downloadKotModelFromJson(String str) =>
    DownloadKotModel.fromJson(json.decode(str));

String downloadKotModelToJson(DownloadKotModel data) =>
    json.encode(data.toJson());

class DownloadKotModel {
  String? message;
  DownloadKotData? data;
  int? status;
  bool? isSuccess;

  DownloadKotModel({
    this.message,
    this.data,
    this.status,
    this.isSuccess,
  });

  factory DownloadKotModel.fromJson(Map<String, dynamic> json) =>
      DownloadKotModel(
        message: json["Message"],
        data: json["Data"] == null
            ? null
            : DownloadKotData.fromJson(json["Data"]),
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

class DownloadKotData {
  String? path;

  DownloadKotData({
    this.path,
  });

  factory DownloadKotData.fromJson(Map<String, dynamic> json) =>
      DownloadKotData(
        path: json["path"],
      );

  Map<String, dynamic> toJson() => {
        "path": path,
      };
}
