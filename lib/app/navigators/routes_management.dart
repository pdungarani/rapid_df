import 'package:get/get.dart';

import 'app_pages.dart';

abstract class RouteManagement {
  static void goToLoginScreen() => Get.offAllNamed<void>(Routes.loginScreen);
  static void goToHomeScreen() => Get.toNamed<void>(Routes.homeScreen);
  static void goToItemScreen() => Get.toNamed<void>(Routes.itemScreen);
  static void goToItemListScreen() => Get.toNamed<void>(Routes.itemListScreen);
}
