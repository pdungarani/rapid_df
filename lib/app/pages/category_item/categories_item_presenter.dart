import 'package:final_df/domain/models/create_model.dart';
import 'package:final_df/domain/models/downloadKot_model.dart';

import '../../../domain/domain.dart';
import '../../../domain/models/createKot_model.dart';
import '../../../domain/models/getOneCategory_model.dart';

class CategoriesItemPresenter {
  CategoriesItemPresenter(this.categoriesItemUsecases);

  final CategoryUsecases categoriesItemUsecases;

  Future<GetKotModel?> getAllKots({
    bool isLoading = false,
    required String tableId,
  }) async =>
      await categoriesItemUsecases.getAllKots(
        isLoading: isLoading,
        tableId: tableId,
      );

  Future<GetCategoryModel?> getAllCategory({
    bool isLoading = false,
    required String search,
  }) async =>
      await categoriesItemUsecases.getAllCategory(
        isLoading: isLoading,
        search: search,
      );

  Future<CategoryItemModel?> postCategoryItem({
    required String search,
    required String categoryId,
    bool isLoading = false,
  }) async =>
      await categoriesItemUsecases.postCategoryItem(
        isLoading: isLoading,
        search: search,
        categoryId: categoryId,
      );

  Future<GetOneCategoryModel?> getOneCategory({
    bool isLoading = false,
    required String search,
    required String categoryId,
  }) async =>
      await categoriesItemUsecases.getOneCategory(
        isLoading: isLoading,
        search: search,
        categoryId: categoryId,
      );

  Future<CreateKotModel?> createKot({
    bool isLoading = false,
    required String tableId,
    required List<Item> items,
  }) async =>
      await categoriesItemUsecases.createKot(
        isLoading: isLoading,
        tableId: tableId,
        items: items,
      );

  Future<GetOneKotModel?> getOneKots({
    bool isLoading = false,
    required String tableId,
    required String kotId,
  }) async =>
      await categoriesItemUsecases.getOneKots(
        isLoading: isLoading,
        tableId: tableId,
        kotId: kotId,
      );

  Future<DownloadKotModel?> downloadKot({
    required String tableId,
    required String kotId,
    bool isLoading = false,
  }) async =>
      await categoriesItemUsecases.downloadKot(
        isLoading: isLoading,
        tableId: tableId,
        kotId: kotId,
      );
}
