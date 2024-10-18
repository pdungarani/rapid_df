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
    GetPage<LoginScreen>(
      name: _Paths.loginScreen,
      transitionDuration: transitionDuration,
      page: LoginScreen.new,
      binding: LoginBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
