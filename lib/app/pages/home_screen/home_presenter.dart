import 'package:final_df/domain/domain.dart';

class HomePresenter {
  HomePresenter(this.homeUsecases);

  final HomeUsecases homeUsecases;

  Future<GetAssignModel?> getAssignedTables({
    bool isLoading = false,
  }) async =>
      await homeUsecases.getAssignedTables(
        isLoading: isLoading,
      );
}
