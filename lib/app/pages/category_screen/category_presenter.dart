import 'package:final_df/domain/models/models.dart';
import 'package:final_df/domain/usecases/usecases.dart';

class CategoryPresenter {
  CategoryPresenter(this.categoryUsecases);

  CategoryUsecases categoryUsecases;

  Future<GetCategoryModel?> getAllCategory({
    bool isLoading = false,
    required String search,
  }) async =>
      await categoryUsecases.getAllCategory(
        isLoading: isLoading,
        search: search,
      );
}
