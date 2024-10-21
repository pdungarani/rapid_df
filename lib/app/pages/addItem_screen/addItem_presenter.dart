import 'package:final_df/domain/models/createKot_model.dart';
import 'package:final_df/domain/models/create_model.dart';
import 'package:final_df/domain/models/getOneCategory_model.dart';
import 'package:final_df/domain/usecases/usecases.dart';

class AddItemPresenter {
  AddItemPresenter(this.addItemUsecases);

  AddItemUsecases addItemUsecases;

  Future<GetOneCategoryModel?> getOneCategopry({
    bool isLoading = false,
    required String search,
    required String categoryId,
  }) async =>
      await addItemUsecases.getOneCategory(
        isLoading: isLoading,
        search: search,
        categoryId: categoryId,
      );

  Future<CreateKotModel?> createKot({
    bool isLoading = false,
    required String tableId,
    required List<Item> items,
  }) async =>
      await addItemUsecases.createKot(
        isLoading: isLoading,
        tableId: tableId,
        items: items,
      );
}
