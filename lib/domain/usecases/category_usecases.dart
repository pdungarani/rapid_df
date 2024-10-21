import 'package:final_df/domain/domain.dart';

class CategoryUsecases {
  CategoryUsecases(this.repository);

  final Repository repository;

  Future<GetCategoryModel?> getAllCategory({
    bool isLoading = false,
    required String search,
  }) async =>
      await repository.getAllCategory(
        isLoading: isLoading,
        search: search,
      );
}
