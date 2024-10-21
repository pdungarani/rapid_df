import 'package:final_df/domain/models/getoneKoy_model.dart';
import 'package:final_df/domain/models/getKot_model.dart';
import 'package:final_df/domain/usecases/usecases.dart';

class ItemPresenter {
  ItemPresenter(this.itemUsecases);

  ItemUsecases itemUsecases;

  Future<GetKotModel?> getAllKots({
    bool isLoading = false,
    required String tableId,
  }) async =>
      await itemUsecases.getAllKots(
        isLoading: isLoading,
        tableId: tableId,
      );

  Future<GetOneKotModel?> getOneKots({
    bool isLoading = false,
    required String tableId,
    required String kotId,
  }) async =>
      await itemUsecases.getOneKots(
        isLoading: isLoading,
        tableId: tableId,
        kotId: kotId,
      );
}
