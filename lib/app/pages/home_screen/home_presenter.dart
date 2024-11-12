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

  Future<ResponseModel?> postShiftOrder({
    required String from,
    required String to,
    bool isLoading = false,
  }) async =>
      await homeUsecases.postShiftOrder(
        from: from,
        to: to,
        isLoading: isLoading,
      );
}
