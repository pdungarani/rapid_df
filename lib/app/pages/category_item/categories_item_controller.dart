import 'package:final_df/app/app.dart';
import 'package:final_df/data/data.dart';
import 'package:final_df/domain/domain.dart';
import 'package:final_df/domain/models/createKot_model.dart';
import 'package:final_df/domain/models/create_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/models/getOneCategory_model.dart';

class CategoriesItemController extends GetxController {
  CategoriesItemController(this.categoriesItemPresenter);

  final CategoriesItemPresenter categoriesItemPresenter;

  @override
  onInit() {
    super.onInit();
  }

  //// ===================================================================== KotScreen ===================================================================== ////

  List<KotDatum> kotList = [];
  int? tableNumber = 1;
  GetAssignDatum? getAssignDatum = GetAssignDatum();

  Future<void> getAllKots(String kotid) async {
    var response = await categoriesItemPresenter.getAllKots(
      tableId: kotid,
      isLoading: true,
    );
    kotList.clear();
    if (response?.data != null) {
      kotList.addAll(response?.data ?? []);
    }
    update();
  }

  //// ===================================================================== CategoriesItemMobile ===================================================================== ////

  TextEditingController searchCategoryController = TextEditingController();

  List<CategoryDatum> categoryDatumList = [];

  Future<void> getAllCategory({
    bool isLoading = true,
    required String search,
  }) async {
    var response = await categoriesItemPresenter.getAllCategory(
      isLoading: isLoading,
      search: search,
    );
    categoryDatumList.clear();
    if (response?.data != null) {
      categoryDatumList.addAll(response?.data ?? []);
    }
    update();
  }

  List colorsAndStylesList = [
    {
      "style": Styles.orange60012,
      "lightcolr": ColorsValue.lightorange,
      "background": ColorsValue.orange,
    },
    {
      "style": Styles.green60012,
      "lightcolr": ColorsValue.lightgreen,
      "background": ColorsValue.green,
    },
    {
      "style": Styles.sky60012,
      "lightcolr": ColorsValue.lightsky,
      "background": ColorsValue.sky,
    },
    {
      "style": Styles.blue60012,
      "lightcolr": ColorsValue.lightblue,
      "background": ColorsValue.blue,
    },
    {
      "style": Styles.purpul60012,
      "lightcolr": ColorsValue.lightpurplu,
      "background": ColorsValue.purplue,
    },
    {
      "style": Styles.red60012,
      "lightcolr": ColorsValue.lightred,
      "background": ColorsValue.red,
    }
  ];

  List colorsAndStylesTabList = [
    {
      "style": Styles.orange60018,
      "lightcolr": ColorsValue.lightorange,
      "background": ColorsValue.orange,
    },
    {
      "style": Styles.green60018,
      "lightcolr": ColorsValue.lightgreen,
      "background": ColorsValue.green,
    },
    {
      "style": Styles.sky60018,
      "lightcolr": ColorsValue.lightsky,
      "background": ColorsValue.sky,
    },
    {
      "style": Styles.blue60018,
      "lightcolr": ColorsValue.lightblue,
      "background": ColorsValue.blue,
    },
    {
      "style": Styles.purpul60018,
      "lightcolr": ColorsValue.lightpurplu,
      "background": ColorsValue.purplue,
    },
    {
      "style": Styles.red60018,
      "lightcolr": ColorsValue.lightred,
      "background": ColorsValue.red,
    }
  ];

  //// ===================================================================== CategoriesItemMobile ===================================================================== ////

  List<CategoryItemData> getCategoryItemList = [];
  List<CategoryItemData> addCategoryItemList = [];

  TextEditingController searchAddItemController = TextEditingController();
  TextEditingController remarkAddItemController = TextEditingController();

  bool isFilter = false;
  int count = 0;

  Future<void> postCategoryItem({
    bool isLoading = true,
    required String search,
    required String categoryId,
  }) async {
    var response = await categoriesItemPresenter.postCategoryItem(
      isLoading: isLoading,
      categoryId: categoryId,
      search: search,
    );
    getCategoryItemList.clear();
    if (response?.data != null) {
      for (var data in response?.data ?? <CategoryItemData>[]) {
        var index =
            addCategoryItemList.indexWhere((element) => element.id == data.id);
        if (index.isNegative) {
          getCategoryItemList.add(data);
        } else {
          getCategoryItemList.add(addCategoryItemList[index]);
        }
      }
    }
    update();
  }

  List<OneCategoryDatum> oneCategoryDatumList = [];
  String? selectedCategory;
  String? categoryId;

  Future<void> getOneCategory() async {
    var response = await categoriesItemPresenter.getOneCategory(
      isLoading: true,
      search: "",
      categoryId: categoryId ?? "",
    );
    oneCategoryDatumList.clear();
    if (response?.data != null) {
      oneCategoryDatumList.addAll(response?.data ?? []);
    }
    update();
  }

  //// ===================================================================== CategoriesItemMobile ===================================================================== ////

  bool isParcel = false;
  String? subKotId = "";
  int kotCount = 0;

  String? tableId = "";

  CreateKotData? kotData;

  Future<void> createKot({
    bool isLoading = true,
    required String tableId,
  }) async {
    var response = await categoriesItemPresenter.createKot(
      isLoading: isLoading,
      tableId: tableId,
      items: addCategoryItemList.map(
        (e) {
          return Item(
            itemId: e.id,
            quantity: e.itemCount,
            remark: e.remark,
          );
        },
      ).toList(),
    );
    if (response?.data != null) {
      kotData = response?.data;
      RouteManagement.goToItemListScreenMobile(
        kotData?.kotId ?? "",
      );
      Get.find<HomeController>().getAssignedTables();
    } else {
      Utility.snacBar(response!.message ?? '', ColorsValue.maincolor1);
    }
    update();
  }

  GetOneKotData? getOneKotData = GetOneKotData();

  Future<void> getOneKots(String? kotId) async {
    var response = await categoriesItemPresenter.getOneKots(
      isLoading: true,
      tableId: tableId ?? "",
      kotId: kotId ?? "",
    );
    getOneKotData = null;
    if (response?.data != null) {
      getOneKotData = response?.data;
    }
    update();
  }

  Future<void> downloadKot(String? kotId) async {
    var response = await categoriesItemPresenter.downloadKot(
      isLoading: true,
      tableId: tableId ?? "",
      kotId: kotId ?? "",
    );
    if (response?.data != null) {
      Utility.launchLinkURL(ApiWrapper.imageUrl + (response?.data?.path ?? ""));
      // getAllKots(tableId ?? "");
    }
    update();
  }
}
