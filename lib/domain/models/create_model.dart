class Item {
    String? itemId;
    int? quantity;
    String? remark;

    Item({
        this.itemId,
        this.quantity,
        this.remark,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        itemId: json["itemId"],
        quantity: json["quantity"],
        remark: json["remark"],
    );

    Map<String, dynamic> toJson() => {
        "itemId": itemId,
        "quantity": quantity,
        "remark": remark,
    };
}