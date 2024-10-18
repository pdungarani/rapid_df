import 'package:get/get.dart';
import 'package:final_df/app/pages/pages.dart';

part 'app_routes.dart';

class AppPages {
  static var transitionDuration = const Duration(milliseconds: 300);

  static const initial = _Paths.splashScreen;
  static final pages = <GetPage>[
    GetPage<SplashScreen>(
      name: _Paths.splashScreen,
      transitionDuration: transitionDuration,
      page: SplashScreen.new,
      binding: SplashBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<LogingScreenMobile>(
      name: _Paths.loginScreen,
      transitionDuration: transitionDuration,
      page: LogingScreenMobile.new,
      binding: LoginBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<HomeScreen>(
      name: _Paths.homeScreen,
      transitionDuration: transitionDuration,
      page: HomeScreen.new,
      binding: HomeBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<ItemScreen>(
      name: _Paths.itemScreen,
      transitionDuration: transitionDuration,
      page: ItemScreen.new,
      binding: ItemBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<ItemListScreen>(
      name: _Paths.itemListScreen,
      transitionDuration: transitionDuration,
      page: ItemListScreen.new,
      binding: ItemBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
