import 'package:final_df/domain/models/models.dart';
import 'package:get/get.dart';
import 'package:final_df/app/app.dart';

class HomeController extends GetxController {
  HomeController(this.homePresenter);

  final HomePresenter homePresenter;

  @override
  void onInit() {
    super.onInit();
    getAssignedTables("", true, []);
  }

  int selection = 1;
  int isselected = -1;
  int? indexx;
  bool isshift = false;
  bool isjoin = false;
  String selectaddressecommerce = '0';

  List<GetAssignDatum> tableList = [];

  Future<void> getAssignedTables(
      String orderIds, bool isLoad, List<String> tableNumbers) async {
    var response = await homePresenter.getAssignedTables(
      isLoading: isLoad,
    );
    tableList.clear();
    if (response?.data != null) {
      if (orderIds == "") {
        tableList.addAll(response?.data ?? []);
      } else {
        tableList.addAll(response?.data ?? []);
        // for (var data in response?.data ?? []) {
        //   if (data.orderid?.id == orderIds &&
        //       tableNumbers.any((element) =>
        //           element ==
        //           Get.find<CategoriesItemController>()
        //               .tableNumber
        //               .toString())) {
        //     // Get.find<CategoriesItemController>()
        //     //     .getOneOrder(data.kotId ?? "", false);
        //   }
        // }
      }
      update();
    }
  }
}
