import 'package:final_df/app/pages/item_screen/item_list_page.dart';
import 'package:flutter/widgets.dart';  
import 'package:get/get.dart';

class ItemController extends GetxController {
  ItemController(this.itemPresenter);

  final ItemPresenter itemPresenter;

  String? tableId = "";
  String? kotId = "";
  String? subKotId = "";
  int? tableNumber = 1;
  List<String> kotList = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];
  bool isParcel = false;
  int kotCount = 0;
  TextEditingController remarkAddItemController = TextEditingController();
}
