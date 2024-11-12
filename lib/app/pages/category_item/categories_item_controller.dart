import 'package:final_df/app/app.dart';
import 'package:final_df/app/pages/pages.dart';
import 'package:final_df/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/models/getOneCategory_model.dart';

class CategoriesItemController extends GetxController {
  CategoriesItemController(this.categoriesItemPresenter);

  final CategoriesItemPresenter categoriesItemPresenter;

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
      getCategoryItemList.addAll(response?.data ?? []);
    }
    update();
  }

  List<OneCategoryDatum> oneCategoryDatumList = [];
  String selectedCategory = '';

  Future<void> getOneCategory() async {
    var response = await categoriesItemPresenter.getOneCategory(
      isLoading: true,
      search: "",
      categoryId: selectedCategory,
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
}
