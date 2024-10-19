import 'package:final_df/app/pages/addItem_screen/addItem_page.dart';
import 'package:get/get.dart';

class AddItemController extends GetxController {
  AddItemController(this.addItemPresenter);

  final AddItemPresenter addItemPresenter;

  String selectedCategory = '';
  bool isFilter = true;
  int itemCounter = 1;

  List<GetCategoryElement> categoryLists = [
    GetCategoryElement(
      id: '1',
      name: 'testCategory'.tr,
    ),
    GetCategoryElement(
      id: '2',
      name: 'allcategory'.tr,
    ),
    GetCategoryElement(
      id: '3',
      name: 'allcategory'.tr,
    ),
    GetCategoryElement(
      id: '5',
      name: 'allcategory'.tr,
    ),
  ];
}

class GetCategoryElement {
  GetCategoryElement({
    required this.id,
    required this.name,
  });
  final String id;
  final String name;
}
