import 'package:final_df/app/pages/profile_screen/profile_page.dart';
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
    GetPage<CategoryScreen>(
      name: _Paths.categoryScreen,
      transitionDuration: transitionDuration,
      page: CategoryScreen.new,
      binding: CategoryBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<AddItemScreen>(
      name: _Paths.addItemScreen,
      transitionDuration: transitionDuration,
      page: AddItemScreen.new,
      binding: AddItemBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<ProfileScreen>(
      name: _Paths.profileScreen,
      transitionDuration: transitionDuration,
      page: ProfileScreen.new,
      binding: ProfileBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
