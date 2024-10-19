import 'package:final_df/app/pages/addItem_screen/addItem_page.dart';
import 'package:get/get.dart';
import 'package:final_df/domain/domain.dart';

class AddItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddItemController>(
      () => AddItemController(
        Get.put(
          AddItemPresenter(
            Get.put(
              AddItemUsecases(
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
