import 'package:final_df/domain/domain.dart';
import 'package:get/get.dart';

import 'app_pages.dart';

abstract class RouteManagement {
  static void goToLoginScreen() => Get.offAllNamed<void>(Routes.loginScreen);
  static void goToHomeScreen() => Get.offAllNamed<void>(Routes.homeScreen);
  static void goToProfileScreen() => Get.toNamed<void>(Routes.profileScreen);
  static void goToKotScreen(String tableId) =>
      Get.toNamed<void>(Routes.kotScreenMobile, arguments: tableId);
  static void goToCategoriesItemMobile(String id) =>
      Get.toNamed<void>(Routes.categoriesItemMobile, arguments: id);
  static void goToAddItemScreenMobile(String id) =>
      Get.toNamed<void>(Routes.addItemScreenMobile, arguments: id);
  static void goToItemListScreenMobile(String kotId) =>
      Get.offAndToNamed<void>(Routes.itemListScreenMobile, arguments: kotId);
  static void goToItemListScreenMobileGetOne(String kotId) =>
      Get.toNamed<void>(Routes.itemListScreenMobile, arguments: kotId);
}
