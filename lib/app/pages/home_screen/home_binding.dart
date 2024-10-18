import 'package:get/get.dart';
import 'package:final_df/app/app.dart';
import 'package:final_df/domain/domain.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        Get.put(
          HomePresenter(
            Get.put(
              HomeUsecases(
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
