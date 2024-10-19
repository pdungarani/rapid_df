part of 'app_pages.dart';

abstract class Routes {
  static const splashScreen = _Paths.splashScreen;
  static const loginScreen = _Paths.loginScreen;
  static const homeScreen = _Paths.homeScreen;
  static const itemScreen = _Paths.itemScreen;
  static const itemListScreen = _Paths.itemListScreen;
  static const categoryScreen = _Paths.categoryScreen;
  static const addItemScreen = _Paths.addItemScreen;
  static const profileScreen = _Paths.profileScreen;
}

abstract class _Paths {
  static const splashScreen = '/splashScreen';
  static const loginScreen = '/LogingScreenMobile';
  static const homeScreen = '/homeScreen';
  static const itemScreen = '/itemScreen';
  static const itemListScreen = '/itemListScreen';
  static const categoryScreen = '/categoryScreen';
  static const addItemScreen = '/addItemScreen';
  static const profileScreen = '/profileScreen';
}
