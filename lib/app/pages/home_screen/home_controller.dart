import 'dart:convert';

import 'package:final_df/domain/models/models.dart';
import 'package:get/get.dart';
import 'package:final_df/app/app.dart';

class HomeController extends GetxController {
  HomeController(this.homePresenter);

  final HomePresenter homePresenter;

  @override
  void onInit() {
    super.onInit();
    getAssignedTables();
  }

  int selection = 1;
  int isselected = -1;
  int? indexx;
  bool isshift = false;
  bool isjoin = false;
  String selectaddressecommerce = '0';

  List<GetAssignDatum> tableList = [];
  List<String> joinTableList = [];

  Future<void> getAssignedTables() async {
    var response = await homePresenter.getAssignedTables(
      isLoading: true,
    );
    tableList.clear();
    if (response?.data != null) {
      tableList.addAll(response?.data ?? []);
      update();
    }
  }

  Future<void> postShiftOrder({
    bool isLoading = true,
  }) async {
    var response = await homePresenter.postShiftOrder(
        isLoading: isLoading,
        from: tableList[isselected].id ?? "",
        to: tableList[int.parse(selectaddressecommerce)].id ?? "");
    if (response != null) {
      isshift = false;
      isselected = -1;
      var res = jsonDecode(response.data);
      if (response.hasError == true) {
        Utility.snacBar(res["Message"], ColorsValue.maincolor1);
      } else {
        await getAssignedTables();
      }
      update();
    }
  }
}
