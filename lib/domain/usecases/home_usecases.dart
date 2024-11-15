import 'package:final_df/domain/models/models.dart';
import 'package:final_df/domain/repositories/repositories.dart';

class HomeUsecases {
  HomeUsecases(this.repository);

  final Repository repository;

  Future<GetAssignModel?> getAssignedTables({
    bool isLoading = false,
  }) async =>
      await repository.getAssignedTables(
        isLoading: isLoading,
      );

  Future<ResponseModel?> postShiftOrder({
    required String from,
    required String to,
    bool isLoading = false,
  }) async =>
      await repository.postShiftOrder(
        from: from,
        to: to,
        isLoading: isLoading,
      );

  Future<ResponseModel?> postJointTable({
    required List<String> tables,
    bool isLoading = false,
  }) async =>
      await repository.postJointTable(
        tables: tables,
        isLoading: isLoading,
      );
}
