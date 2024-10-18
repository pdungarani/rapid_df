import 'package:final_df/domain/repositories/repositories.dart';
import 'package:get/get.dart';
import 'package:final_df/app/app.dart';

class SplashController extends GetxController {
  SplashController(this.splashPresenter);

  final SplashPresenter splashPresenter;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2)).then(
      (value) {
        var token = Get.find<Repository>().getStringValue(LocalKeys.authToken);
        if (token.isNotEmpty) {
          RouteManagement.goToHomeScreen();
        } else {
          RouteManagement.goToLoginScreen();
        }
      },
    );
  }
}
