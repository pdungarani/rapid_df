import 'package:final_df/domain/domain.dart';
import 'package:final_df/domain/models/profile_model.dart';

class ProfielUsecases {
  ProfielUsecases(this.repository);

  final Repository repository;
  
  Future<GetProfileModel?> getProfile({
    bool isLoading = false,
  }) async =>
      await repository.getProfile(
        isLoading: isLoading,
      );
}
