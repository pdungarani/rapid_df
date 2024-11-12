import 'package:final_df/app/navigators/navigators.dart';
import 'package:final_df/app/pages/profile_screen/profile_page.dart';
import 'package:final_df/app/theme/theme.dart';
import 'package:final_df/app/utils/utils.dart';
import 'package:final_df/domain/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.white,
        appBar: AppBar(
          titleTextStyle: Styles.white70018,
          title: Text(
            "profile".toUpperCase(),
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Padding(
              padding: Dimens.edgeInsets10,
              child: SvgPicture.asset(
                AssetConstants.backarrowicon,
              ),
            ),
          ),
          backgroundColor: ColorsValue.maincolor1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(Dimens.twelve),
              bottomRight: Radius.circular(Dimens.twelve),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetConstants.backgroundimage),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: Dimens.edgeInsets20_20_20_0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: Dimens.ninty,
                        width: Dimens.ninty,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AssetConstants.ic_profile,
                            colorFilter: const ColorFilter.mode(
                              ColorsValue.maincolor1,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Dimens.boxHeight10,
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Track Table",
                        style: Styles.main60012,
                      ),
                    ),
                    Dimens.boxHeight30,
                    Container(
                      height: Dimens.sixty,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        children: [
                          Dimens.boxWidth20,
                          SvgPicture.asset(AssetConstants.Usera),
                          Dimens.boxWidth12,
                          Text(
                            controller.profileData?.username ??
                                'Lawrence Bishnoi',
                            style: Styles.main60012,
                          ),
                        ],
                      ),
                    ),
                    Dimens.boxHeight12,
                    Container(
                      height: Dimens.sixty,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        children: [
                          Dimens.boxWidth20,
                          SvgPicture.asset(AssetConstants.Usera),
                          Dimens.boxWidth12,
                          Text(
                            "@${controller.profileData?.username ?? 'lawrence_bishnoi'}"
                                .tr
                                .toUpperCase(),
                            style: Styles.main60012,
                          ),
                        ],
                      ),
                    ),
                    Dimens.boxHeight12,
                    Container(
                      height: Dimens.sixty,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        children: [
                          Dimens.boxWidth20,
                          SvgPicture.asset(AssetConstants.ic_Call),
                          Dimens.boxWidth12,
                          Text(
                            "${controller.profileData?.countryCode ?? '+ 91'} ${controller.profileData?.mobile ?? "012345678"}",
                            style: Styles.main60012,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  backgroundColor: ColorsValue.white,
                                  title: Text(
                                    "confirm_logout".tr,
                                    style: Styles.main60018,
                                  ),
                                  content: Text(
                                    "logout_des".tr,
                                    style: Styles.redColor70016,
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text(
                                        "yes".tr,
                                        style: Styles.redColor70016,
                                      ),
                                      onPressed: () {
                                        Get.back();
                                        Get.find<Repository>()
                                            .clearData(LocalKeys.authToken);
                                        Get.find<Repository>()
                                            .deleteAllSecuredValues();
                                        RouteManagement.goToLoginScreen();
                                      },
                                    ),
                                    TextButton(
                                      child: Text(
                                        "no".tr,
                                        style: Styles.main60016,
                                      ),
                                      onPressed: () {
                                        Get.back();
                                      },
                                    )
                                  ],
                                );
                              },
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: Dimens.fifty,
                            margin: Dimens.edgeInsetsBottom30,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(AssetConstants.logouticon),
                                Dimens.boxWidth12,
                                Text(
                                  "Log out".tr.toUpperCase(),
                                  style: Styles.red60012,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
