part of 'app_pages.dart';

abstract class Routes {
  static const splashScreen = _Paths.splashScreen;
  static const loginScreen = _Paths.loginScreen;
  static const homeScreen = _Paths.homeScreen;
  static const profileScreen = _Paths.profileScreen;
  static const kotScreenMobile = _Paths.kotScreenMobile;
  static const categoriesItemMobile = _Paths.categoriesItemMobile;
  static const addItemScreenMobile = _Paths.addItemScreenMobile;
  static const itemListScreenMobile = _Paths.itemListScreenMobile;
}

abstract class _Paths {
  static const splashScreen = '/splashScreen';
  static const loginScreen = '/LogingScreenMobile';
  static const homeScreen = '/homeScreen';
  static const profileScreen = '/profileScreen';
  static const kotScreenMobile = '/kotScreenMobile';
  static const categoriesItemMobile = '/categoriesItemMobile';
  static const addItemScreenMobile = '/addItemScreenMobile';
  static const itemListScreenMobile = '/itemListScreenMobile';
}
