import 'dart:convert';

GetOneKotModel getOneKotModelFromJson(String str) =>
    GetOneKotModel.fromJson(json.decode(str));

String getOneKotModelToJson(GetOneKotModel data) => json.encode(data.toJson());

class GetOneKotModel {
  String? message;
  GetOneKotData? data;
  int? status;
  bool? isSuccess;

  GetOneKotModel({
    this.message,
    this.data,
    this.status,
    this.isSuccess,
  });

  factory GetOneKotModel.fromJson(Map<String, dynamic> json) => GetOneKotModel(
        message: json["Message"],
        data:
            json["Data"] == null ? null : GetOneKotData.fromJson(json["Data"]),
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

class GetOneKotData {
  String? id;
  int? kotNo;
  List<ItemElement>? items;
  int? createTimestamp;
  DateTime? createdAt;

  GetOneKotData({
    this.id,
    this.kotNo,
    this.items,
    this.createTimestamp,
    this.createdAt,
  });

  factory GetOneKotData.fromJson(Map<String, dynamic> json) => GetOneKotData(
        id: json["_id"],
        kotNo: json["kot_no"],
        items: json["items"] == null
            ? []
            : List<ItemElement>.from(
                json["items"]!.map((x) => ItemElement.fromJson(x))),
        createTimestamp: json["create_timestamp"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "kot_no": kotNo,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "create_timestamp": createTimestamp,
        "createdAt": createdAt?.toIso8601String(),
      };
}

class ItemElement {
  ItemItem? item;
  int? quantity;
  String? remark;

  ItemElement({
    this.item,
    this.quantity,
    this.remark,
  });

  factory ItemElement.fromJson(Map<String, dynamic> json) => ItemElement(
        item: json["item"] == null ? null : ItemItem.fromJson(json["item"]),
        quantity: json["quantity"],
        remark: json["remark"],
      );

  Map<String, dynamic> toJson() => {
        "item": item?.toJson(),
        "quantity": quantity,
        "remark": remark,
      };
}

class ItemItem {
  String? id;
  String? name;
  int? code;
  String? codeInString;
  int? price;
  bool? status;

  ItemItem({
    this.id,
    this.name,
    this.code,
    this.codeInString,
    this.price,
    this.status,
  });

  factory ItemItem.fromJson(Map<String, dynamic> json) => ItemItem(
        id: json["_id"],
        name: json["name"],
        code: json["code"],
        codeInString: json["codeInString"],
        price: json["price"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "code": code,
        "codeInString": codeInString,
        "price": price,
        "status": status,
      };
}
