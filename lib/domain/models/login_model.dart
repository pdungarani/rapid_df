import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

class LoginModel {
  String message;
  LoginData? data;
  int status;
  bool isSuccess;

  LoginModel({
    required this.message,
    required this.data,
    required this.status,
    required this.isSuccess,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        message: json["Message"],
        data: json["Data"] != 0 ? LoginData.fromJson(json["Data"]) : null,
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

class LoginData {
  String? accessToken;
  bool? isManager;
  bool? parcelAccess;
  String? channelid;

  LoginData({
    this.accessToken,
    this.isManager,
    this.parcelAccess,
    this.channelid,
  });

  factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
        accessToken: json["accessToken"] ?? '',
        isManager: json["is_manager"] ?? false,
        parcelAccess: json["parcel_access"] ?? false,
        channelid: json["channelid"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "is_manager": isManager,
        "parcel_access": parcelAccess,
        "channelid": channelid,
      };
}
