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
    GetPage<ProfileScreen>(
      name: _Paths.profileScreen,
      transitionDuration: transitionDuration,
      page: ProfileScreen.new,
      binding: ProfileBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<KotScreenMobile>(
      name: _Paths.kotScreenMobile,
      transitionDuration: transitionDuration,
      page: KotScreenMobile.new,
      binding: CategoriesItemBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<CategoriesItemMobile>(
      name: _Paths.categoriesItemMobile,
      transitionDuration: transitionDuration,
      page: CategoriesItemMobile.new,
      binding: CategoriesItemBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<AddItemScreenMobile>(
      name: _Paths.addItemScreenMobile,
      transitionDuration: transitionDuration,
      page: AddItemScreenMobile.new,
      binding: CategoriesItemBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage<ItemListScreenMobile>(
      name: _Paths.itemListScreenMobile,
      transitionDuration: transitionDuration,
      page: ItemListScreenMobile.new,
      binding: CategoriesItemBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
