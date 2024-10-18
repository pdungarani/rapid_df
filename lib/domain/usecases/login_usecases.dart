import 'package:final_df/domain/domain.dart';
import 'package:final_df/domain/models/login_model.dart';

class LoginUsecases {
  LoginUsecases(this.repository);

  final Repository repository;

  Future<LoginModel?> login({
    required String username,
    required String password,
    required String fcmToken,
    bool isLoading = false,
  }) async =>
      await repository.login(
        username: username,
        password: password,
        fcmToken: fcmToken,
        isLoading: isLoading,
      );
}
