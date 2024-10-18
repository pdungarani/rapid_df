import 'package:final_df/app/app.dart';
import 'package:final_df/app/widgets/custom_button.dart';
import 'package:final_df/app/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogingScreenMobile extends StatelessWidget {
  const LogingScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height,
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Image.asset(AssetConstants.logingscreen),
                          Form(
                            key: controller.loging,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(Dimens.thirty),
                                      topRight: Radius.circular(Dimens.thirty),
                                    ),
                                    color: ColorsValue.white,
                                  ),
                                  child: Padding(
                                    padding: Dimens.edgeInsets20_30_20_30,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "loging".tr,
                                          style: Styles.main60032,
                                        ),
                                        Dimens.boxHeight15,
                                        CustomTextFormField(
                                          text: "username".tr,
                                          hintText: 'usernamehinttext'.tr,
                                          controller: controller
                                              .usernameTextEditingController,
                                          fillColor: ColorsValue.transparent,
                                          validation: (value) {
                                            return controller.username(value!);
                                          },
                                        ),
                                        Dimens.boxHeight20,
                                        Obx(
                                          () => CustomTextFormField(
                                            text: "password".tr,
                                            hintText: 'password'.tr,
                                            suffixIcon: InkWell(
                                                onTap: () {
                                                  controller.ispasshide.value =
                                                      !controller
                                                          .ispasshide.value;
                                                },
                                                child: controller
                                                        .ispasshide.value
                                                    ? Icon(
                                                        Icons.visibility_off,
                                                        color: ColorsValue
                                                            .secondrycolor,
                                                      )
                                                    : Icon(
                                                        Icons.visibility,
                                                        color: ColorsValue
                                                            .secondrycolor,
                                                      )),
                                            maxLines: 1,
                                            obscure:
                                                controller.ispasshide.value,
                                            controller: controller
                                                .passwordTextEditingController,
                                            fillColor: ColorsValue.transparent,
                                            validation: (value) {
                                              return controller
                                                  .password(value!);
                                            },
                                          ),
                                        ),
                                        Dimens.boxHeight20,
                                        CustomMaterialButton(
                                          height: Dimens.fourtyFive,
                                          text: 'loging'.tr,
                                          onTap: () {
                                            if (controller.loging.currentState!
                                                .validate()) {
                                              controller.loginApi();
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 280,
                            left: 20,
                            child: SizedBox(
                              height: 180,
                              width: 130,
                              child: Image.asset(AssetConstants.applogo),
                            ),
                          ),
                          Positioned(
                            top: 330,
                            right: 0,
                            child: SizedBox(
                              height: 300,
                              width: 200,
                              child: Image.asset(AssetConstants.logingplate),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
