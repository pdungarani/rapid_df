import 'package:final_df/domain/domain.dart';
import 'package:final_df/domain/models/login_model.dart';

class LoginPresenter {
  LoginPresenter(this.loginUseCases);

  final LoginUsecases loginUseCases;
  
  Future<LoginModel?> login({
    required String username,
    required String password,
    required String fcmToken,
    bool isLoading = false,
  }) async =>
      await loginUseCases.login(
        username: username,
        password: password,
        fcmToken: fcmToken,
        isLoading: isLoading,
      );
}
