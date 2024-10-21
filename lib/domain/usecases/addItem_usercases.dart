import 'package:final_df/domain/models/createKot_model.dart';
import 'package:final_df/domain/models/create_model.dart';
import 'package:final_df/domain/models/getOneCategory_model.dart';
import 'package:final_df/domain/repositories/repositories.dart';

class AddItemUsecases {
  AddItemUsecases(this.repository);

  final Repository repository;

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
}
