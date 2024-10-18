import 'package:final_df/app/pages/category_screen/category_page.dart';
import 'package:get/get.dart';
import 'package:final_df/domain/domain.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryController>(
      () => CategoryController(
        Get.put(
          CategoryPresenter(
            Get.put(
              CategoryUsecases(
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
