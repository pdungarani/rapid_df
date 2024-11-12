import 'package:final_df/domain/domain.dart';
import 'package:get/get.dart';

import 'app_pages.dart';

abstract class RouteManagement {
  static void goToLoginScreen() => Get.offAllNamed<void>(Routes.loginScreen);
  static void goToHomeScreen() => Get.offAllNamed<void>(Routes.homeScreen);
  static void goToProfileScreen() => Get.toNamed<void>(Routes.profileScreen);
  static void goToKotScreen(GetAssignDatum getAssignDatum) =>
      Get.toNamed<void>(Routes.kotScreenMobile, arguments: getAssignDatum);
  static void goToCategoriesItemMobile() =>
      Get.toNamed<void>(Routes.categoriesItemMobile);
  static void goToAddItemScreenMobile(String id) =>
      Get.toNamed<void>(Routes.addItemScreenMobile, arguments: id);
  static void goToItemListScreenMobile() =>
      Get.toNamed<void>(Routes.itemListScreenMobile);
}
