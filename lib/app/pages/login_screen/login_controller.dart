import 'package:final_df/app/navigators/navigators.dart';
import 'package:final_df/app/utils/utils.dart';
import 'package:final_df/domain/models/login_model.dart';
import 'package:final_df/domain/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:final_df/app/pages/pages.dart';

class LoginController extends GetxController {
  LoginController(this.loginPresenter);

  final LoginPresenter loginPresenter;

  TextEditingController usernameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  GlobalKey<FormState> loging = GlobalKey<FormState>();
  GlobalKey text = GlobalKey();
  var ispasshide = true.obs;

  String? username(String value) {
    if (value.isEmpty) {
      return "enterusername".tr;
    }
    return null;
  }

  String? password(String value) {
    if (value.isEmpty) {
      return "enterstrongpassword".tr;
    }
    return null;
  }

  LoginData logingresponse = LoginData();

  Future<void> loginApi() async {
    var response = await loginPresenter.login(
      isLoading: true,
      password: passwordTextEditingController.text,
      username: usernameTextEditingController.text,
      fcmToken: "",
    );
    if (response?.status != 200) {
      Utility.errorMessage(response!.message);
    } else {
      Get.find<Repository>()
          .saveValue(LocalKeys.authToken, response!.data!.accessToken);
      Get.find<Repository>()
          .saveValue(LocalKeys.chanelId, response.data!.channelid);
      Get.find<Repository>()
          .saveValue(LocalKeys.isManager, response.data!.isManager);
      Get.find<Repository>()
          .saveValue(LocalKeys.parcelAccess, response.data!.parcelAccess);
      logingresponse = response.data!;

      RouteManagement.goToHomeScreen();
    }
  }
}
