// To parse this JSON data, do
//
//     final getProfileModel = getProfileModelFromJson(jsonString);

import 'dart:convert';

GetProfileModel getProfileModelFromJson(String str) => GetProfileModel.fromJson(json.decode(str));

String getProfileModelToJson(GetProfileModel data) => json.encode(data.toJson());

class GetProfileModel {
    String? message;
    GetProfileData? data;
    int? status;
    bool? isSuccess;

    GetProfileModel({
        this.message,
        this.data,
        this.status,
        this.isSuccess,
    });

    factory GetProfileModel.fromJson(Map<String, dynamic> json) => GetProfileModel(
        message: json["Message"],
        data: json["Data"] == null ? null : GetProfileData.fromJson(json["Data"]),
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

class GetProfileData {
    String? name;
    String? username;
    String? countryCode;
    String? mobile;
    CountryWiseContact? countryWiseContact;
    bool? isManager;

    GetProfileData({
        this.name,
        this.username,
        this.countryCode,
        this.mobile,
        this.countryWiseContact,
        this.isManager,
    });

    factory GetProfileData.fromJson(Map<String, dynamic> json) => GetProfileData(
        name: json["name"],
        username: json["username"],
        countryCode: json["countryCode"],
        mobile: json["mobile"],
        countryWiseContact: json["country_wise_contact"] == null ? null : CountryWiseContact.fromJson(json["country_wise_contact"]),
        isManager: json["is_manager"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "username": username,
        "countryCode": countryCode,
        "mobile": mobile,
        "country_wise_contact": countryWiseContact?.toJson(),
        "is_manager": isManager,
    };
}

class CountryWiseContact {
    String? number;
    String? internationalNumber;
    String? nationalNumber;
    String? e164Number;
    String? countryCode;
    String? dialCode;

    CountryWiseContact({
        this.number,
        this.internationalNumber,
        this.nationalNumber,
        this.e164Number,
        this.countryCode,
        this.dialCode,
    });

    factory CountryWiseContact.fromJson(Map<String, dynamic> json) => CountryWiseContact(
        number: json["number"],
        internationalNumber: json["internationalNumber"],
        nationalNumber: json["nationalNumber"],
        e164Number: json["e164Number"],
        countryCode: json["countryCode"],
        dialCode: json["dialCode"],
    );

    Map<String, dynamic> toJson() => {
        "number": number,
        "internationalNumber": internationalNumber,
        "nationalNumber": nationalNumber,
        "e164Number": e164Number,
        "countryCode": countryCode,
        "dialCode": dialCode,
    };
}
