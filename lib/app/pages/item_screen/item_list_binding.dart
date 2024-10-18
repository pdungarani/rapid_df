import 'package:final_df/app/pages/item_screen/item_list_page.dart';
import 'package:final_df/domain/usecases/usecases.dart';
import 'package:get/get.dart';

class ItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemController>(
      () => ItemController(
        Get.put(
          ItemPresenter(
            Get.put(
              ItemUsecases(
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
