import 'package:final_df/app/navigators/navigators.dart';
import 'package:final_df/app/pages/addItem_screen/addItem_page.dart';
import 'package:final_df/app/theme/theme.dart';
import 'package:final_df/app/utils/utils.dart';
import 'package:final_df/domain/models/createKot_model.dart';
import 'package:final_df/domain/models/create_model.dart';
import 'package:final_df/domain/models/getoneCategory_model.dart';
import 'package:final_df/domain/models/models.dart';
import 'package:get/get.dart';

class AddItemController extends GetxController {
  AddItemController(this.addItemPresenter);

  final AddItemPresenter addItemPresenter;

  String selectedCategory = 'select_category'.tr;
  bool isFilter = true;

  List<oneCategoryDatum> internalItemList = [];
  List getCategoryItemList = [];

  Future<void> getOneCategory({
    bool isLoading = true,
    required String search,
    required String categoryId,
  }) async {
    var response = await addItemPresenter.getOneCategopry(
      isLoading: isLoading,
      search: search,
      categoryId: categoryId,
    );
    if (response?.data != null) {
      for (var data in response?.data ?? []) {
        var index =
            internalItemList.indexWhere((element) => element.id == data.id);
        if (index.isNegative) {
          getCategoryItemList.add(data);
        } else {
          getCategoryItemList.add(internalItemList[index]);
        }
      }
    } else {
      Utility.snacBar(response!.message ?? '', ColorsValue.maincolor1);
    }
    update();
  }

  CreateKotData? kotData;

  Future<void> createKot({
    bool isLoading = true,
    required String tableId,
    required List<Item> items,
  }) async {
    var response = await addItemPresenter.createKot(
      isLoading: isLoading,
      tableId: tableId,
      items: items,
    );
    if (response?.data != null) {
      kotData = response?.data;
      RouteManagement.goToDownloadKotScreen(
        tableId: kotData?.tableId ?? '',
        categoryId: kotData?.kotId,
      );
    } else {
      Utility.snacBar(response!.message ?? '', ColorsValue.maincolor1);
    }
    print(getCategoryItemList);
    update();
  }

  List<CategoryDatum> categoryList = [];

  Future<void> getAllCategory({
    bool isLoading = true,
    required String search,
  }) async {
    var response = await addItemPresenter.getAllCategory(
      isLoading: isLoading,
      search: search,
    );
    categoryList.clear();
    if (response == null) {
      Utility.snacBar(response!.message ?? '', ColorsValue.maincolor1);
    } else {
      categoryList.addAll(response.data ?? []);
    }
    update();
  }
}

class GetCategoryElement {
  GetCategoryElement({
    required this.id,
    required this.name,
  });
  final String id;
  final String name;
}
