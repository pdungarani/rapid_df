import 'package:final_df/domain/domain.dart';
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
}
