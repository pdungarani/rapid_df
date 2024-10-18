import 'package:get/get.dart';
import 'package:final_df/app/pages/pages.dart';
import 'package:final_df/domain/domain.dart';

// coverage:ignore-file
/// A list of bindings which will be used in the route of [SplashView].
class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(
        Get.put(
          SplashPresenter(
            Get.put(
              SplashUseCases(
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
