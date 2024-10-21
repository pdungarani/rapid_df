import 'package:final_df/app/pages/category_screen/category_page.dart';
import 'package:final_df/app/theme/theme.dart';
import 'package:final_df/app/utils/utils.dart';
import 'package:final_df/domain/models/models.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  CategoryController(this.categoryPresenter);

  final CategoryPresenter categoryPresenter;

  List colorsAndStylesList = [
    {
      "style": Styles.orange60012,
      "lightcolr": ColorsValue.lightorange,
      "background": ColorsValue.orange,
    },
    {
      "style": Styles.green60012,
      "lightcolr": ColorsValue.lightgreen,
      "background": ColorsValue.green,
    },
    {
      "style": Styles.sky60012,
      "lightcolr": ColorsValue.lightsky,
      "background": ColorsValue.sky,
    },
    {
      "style": Styles.blue60012,
      "lightcolr": ColorsValue.lightblue,
      "background": ColorsValue.blue,
    },
    {
      "style": Styles.purpul60012,
      "lightcolr": ColorsValue.lightpurplu,
      "background": ColorsValue.purplue,
    },
    {
      "style": Styles.red60012,
      "lightcolr": ColorsValue.lightred,
      "background": ColorsValue.red,
    }
  ];

  List<CategoryDatum> categoryList = [];

  Future<void> getoneKots({
    bool isLoading = true,
    required String search,
  }) async {
    var response = await categoryPresenter.getAllCategory(
      isLoading: isLoading,
      search: search,
    );
    categoryList.clear();
    if (response == null) {
      Utility.snacBar(response!.message ?? '', ColorsValue.maincolor1);
    } else {
      categoryList.addAll(response.data ?? []);
    }
    update();
  }
}
