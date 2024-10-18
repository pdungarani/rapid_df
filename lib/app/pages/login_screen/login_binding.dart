import 'package:get/get.dart';
import 'package:final_df/app/pages/pages.dart';
import 'package:final_df/domain/domain.dart';

// coverage:ignore-file
/// A list of bindings which will be used in the route of [LoginView].
class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(
        Get.put(
          LoginPresenter(
            Get.put(
              LoginUsecases(
                Get.find(),
              ),
              permanent: true,
            ),
          ),
        ),
      ),
    );
  }
}
