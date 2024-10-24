import 'package:final_df/app/pages/item_screen/item_list_page.dart';
import 'package:final_df/app/theme/theme.dart';
import 'package:final_df/app/utils/utils.dart';
import 'package:final_df/domain/models/downloadKot_model.dart';
import 'package:final_df/domain/models/getKot_model.dart';
import 'package:final_df/domain/models/models.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ItemController extends GetxController {
  ItemController(this.itemPresenter);

  final ItemPresenter itemPresenter;

  String? tableId = "";

  String? subKotId = "";
  int? tableNumber = 1;
  GetAssignDatum? data;
  // List<String> kotList = [
  //   '1',
  //   '2',
  //   '3',
  //   '4',
  //   '5',
  // ];
  bool isParcel = false;
  int kotCount = 0;
  TextEditingController remarkAddItemController = TextEditingController();

  List<KotDatum> kotsData = [];

  Future<void> getAllKots({
    bool isLoading = true,
    required String tableId,
  }) async {
    var response = await itemPresenter.getAllKots(
      isLoading: isLoading,
      tableId: tableId,
    );
    kotsData.clear();
    if (response == null) {
      Utility.snacBar(response!.message ?? '', ColorsValue.maincolor1);
    } else {
      kotsData.addAll(response.data ?? []);
    }
    update();
  }

  List<ItemElement> getOneKot = [];
  GetOneKotData? getOneKotData;

  Future<void> getoneKots({
    bool isLoading = true,
    required String tableId,
    required String kotId,
  }) async {
    var response = await itemPresenter.getOneKots(
      isLoading: isLoading,
      tableId: tableId,
      kotId: kotId,
    );
    getOneKot.clear();
    if (response == null) {
      Utility.snacBar(response!.message ?? '', ColorsValue.maincolor1);
    } else {
      getOneKotData = response.data;
      getOneKot.addAll(getOneKotData?.items ?? []);
    }
    update();
  }

  DownloadKotData? downloadKotData;

  Future<void> downloadKot({
    bool isLoading = true,
    required String tableId,
    required String kotId,
  }) async {
    var response = await itemPresenter.downloadKot(
      isLoading: isLoading,
      tableId: tableId,
      kotId: kotId,
    );
    if (response == null) {
      Utility.snacBar(response!.message ?? '', ColorsValue.maincolor1);
    } else {
      downloadKotData = response.data;
    }
    update();
  }
}
