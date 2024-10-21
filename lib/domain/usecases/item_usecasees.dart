import 'package:final_df/domain/models/getoneKoy_model.dart';
import 'package:final_df/domain/models/getKot_model.dart';
import 'package:final_df/domain/repositories/repositories.dart';

class ItemUsecases {
  ItemUsecases(this.repository);

  final Repository repository;

  Future<GetKotModel?> getAllKots({
    bool isLoading = false,
    required String tableId,
  }) async =>
      await repository.getAllKots(
        isLoading: isLoading,
        tableId: tableId,
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
}
