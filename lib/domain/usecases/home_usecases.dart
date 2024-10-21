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
}
