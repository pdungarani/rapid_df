import 'package:final_df/app/pages/pages.dart';
import 'package:final_df/domain/usecases/usecases.dart';
import 'package:get/get.dart';

class CategoriesItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoriesItemController>(
      () => CategoriesItemController(
        Get.put(
          CategoriesItemPresenter(
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
