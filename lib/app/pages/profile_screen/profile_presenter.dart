import 'package:final_df/domain/models/profile_model.dart';
import 'package:final_df/domain/usecases/usecases.dart';

class PofilePresenter {
  PofilePresenter(this.profileUsecases);

  final ProfielUsecases profileUsecases;

  Future<GetProfileModel?> getProfile({
    bool isLoading = false,
  }) async =>
      await profileUsecases.getProfile(
        isLoading: isLoading,
      );
}
