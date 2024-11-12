import '../../../domain/domain.dart';
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
}
