import 'package:final_df/domain/domain.dart';
import 'package:final_df/domain/models/createKot_model.dart';
import 'package:final_df/domain/models/create_model.dart';
import 'package:final_df/domain/models/downloadKot_model.dart';
import 'package:final_df/domain/models/getOneCategory_model.dart';

class CategoryUsecases {
  CategoryUsecases(this.repository);

  final Repository repository;

  Future<GetKotModel?> getAllKots({
    bool isLoading = false,
    required String tableId,
  }) async =>
      await repository.getAllKots(
        isLoading: isLoading,
        tableId: tableId,
      );

  Future<GetCategoryModel?> getAllCategory({
    bool isLoading = false,
    required String search,
  }) async =>
      await repository.getAllCategory(
        isLoading: isLoading,
        search: search,
      );

  Future<CategoryItemModel?> postCategoryItem({
    required String search,
    required String categoryId,
    bool isLoading = false,
  }) async =>
      await repository.postCategoryItem(
        isLoading: isLoading,
        search: search,
        categoryId: categoryId,
      );

  Future<GetOneCategoryModel?> getOneCategory({
    bool isLoading = false,
    required String search,
    required String categoryId,
  }) async =>
      await repository.getOneCategory(
        isLoading: isLoading,
        search: search,
        categoryId: categoryId,
      );

  Future<CreateKotModel?> createKot({
    bool isLoading = false,
    required String tableId,
    required List<Item> items,
  }) async =>
      await repository.createKot(
        isLoading: isLoading,
        tableId: tableId,
        items: items,
      );

  Future<GetOneKotModel?> getOneKots({
    bool isLoading = false,
    required String tableId,
    required String kotId,
  }) async =>
      await repository.getOneKots(
        isLoading: isLoading,
        tableId: tableId,
        kotId: kotId,
      );

  Future<DownloadKotModel?> downloadKot({
    required String tableId,
    required String kotId,
    bool isLoading = false,
  }) async =>
      await repository.downloadKot(
        isLoading: isLoading,
        tableId: tableId,
        kotId: kotId,
      );
}
