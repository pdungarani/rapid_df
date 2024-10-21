import 'package:final_df/domain/models/models.dart';
import 'package:get/get.dart';

import 'app_pages.dart';

abstract class RouteManagement {
  static void goToLoginScreen() => Get.offAllNamed<void>(Routes.loginScreen);
  static void goToHomeScreen() => Get.toNamed<void>(Routes.homeScreen);
  static void goToItemScreen(GetAssignDatum tableData) =>
      Get.toNamed<void>(Routes.itemScreen, arguments: tableData);
  static void goToItemListScreen(
          {required String kotId, required String tableId}) =>
      Get.toNamed<void>(Routes.itemListScreen, arguments: [kotId, tableId]);
  static void goToCategoryScreen({required String tableId}) =>
      Get.toNamed<void>(Routes.categoryScreen, arguments: tableId);
  static void goToaddItemScreen(
          {String? categoryId, required String tableId}) =>
      Get.toNamed<void>(Routes.addItemScreen, arguments: [categoryId, tableId]);
  static void goToProfileScreen() => Get.toNamed<void>(Routes.profileScreen);
}
