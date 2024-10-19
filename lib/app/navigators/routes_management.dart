import 'package:get/get.dart';

import 'app_pages.dart';

abstract class RouteManagement {
  static void goToLoginScreen() => Get.offAllNamed<void>(Routes.loginScreen);
  static void goToHomeScreen() => Get.toNamed<void>(Routes.homeScreen);
  static void goToItemScreen() => Get.toNamed<void>(Routes.itemScreen);
  static void goToItemListScreen() => Get.toNamed<void>(Routes.itemListScreen);
  static void goToCategoryScreen() => Get.toNamed<void>(Routes.categoryScreen);
  static void goToaddItemScreen() => Get.toNamed<void>(Routes.addItemScreen);
  static void goToProfileScreen() => Get.toNamed<void>(Routes.profileScreen);
}
