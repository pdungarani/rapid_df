import 'package:final_df/app/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.blue,
        body: Stack(
          children: [
            Container(
              height: Get.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetConstants.backgroundimage,
                  ),
                ),
              ),
            ),
            Padding(
              padding: Dimens.edgeInsets20_30_20_10,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: Dimens.seventy,
                        width: Dimens.seventy,
                        child: Image.asset(AssetConstants.applogo),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'tableview'.tr,
                            style: Styles.titlestyle70018,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          AssetConstants.profile,
                          height: Dimens.thirtyFour,
                        ),
                      ),
                      Dimens.boxWidth10,
                    ],
                  ),
                  Dimens.boxHeight10,
                  controller.selection == 1
                      ? Expanded(
                          child: RefreshIndicator(
                            onRefresh: () async {},
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: Dimens.fourty,
                                crossAxisSpacing: Dimens.twelve,
                                mainAxisSpacing: Dimens.twelve,
                              ),
                              itemCount: 3,
                              padding: Dimens.edgeInsets0_08_0_08,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: controller.isselected == -1
                                      ? () {
                                          RouteManagement.goToItemScreen();
                                        }
                                      : () {
                                          print(
                                              "object ${controller.isselected}");
                                        },
                                  onLongPress: () {
                                    controller.isselected = index;
                                    controller.update();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: controller.isselected == index
                                          ? ColorsValue.maincolor1
                                          : ColorsValue.lightNude,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(Dimens.eight),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        index.toString(),
                                        style: controller.isselected == index
                                            ? Styles.white60012
                                            : Styles.main60012,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      : Expanded(
                          child: RefreshIndicator(
                            onRefresh: () => Future.sync(
                              () => controller,
                            ),
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: Dimens.fourty,
                                crossAxisSpacing: Dimens.twelve,
                                mainAxisSpacing: Dimens.twelve,
                              ),
                              itemCount: 5,
                              padding: Dimens.edgeInsets0_08_0_08,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: controller.isselected == index
                                          ? ColorsValue.maincolor1
                                          : ColorsValue.greyLight,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(Dimens.eight),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "a234567",
                                          style: controller.isselected == index
                                              ? Styles.white60012
                                              : Styles.main60012,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                  Visibility(
                    visible: controller.isselected == -1 ? false : true,
                    child: controller.isshift
                        ? Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: Dimens.edgeInsets8,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              ColorsValue.whitetext),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(Dimens.eight),
                                          ),
                                          side: const BorderSide(
                                            color: ColorsValue.maincolor1,
                                          ),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      if (controller.isshift) {
                                        controller.isshift = false;
                                        controller.isselected = -1;
                                      } else {}
                                      controller.update();
                                    },
                                    child: Padding(
                                      padding: Dimens.edgeInsets0_10_0_10,
                                      child: Text(
                                        "cancle".tr.toUpperCase(),
                                        style: Styles.main60014,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: Dimens.edgeInsets8,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              controller.isselected < -1
                                                  ? ColorsValue
                                                      .mainwithopacitycolor
                                                  : ColorsValue.maincolor1),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(Dimens.eight),
                                          ),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      // controller.postShiftOrder();
                                    },
                                    child: Padding(
                                      padding: Dimens.edgeInsets0_10_0_10,
                                      child: Text(
                                        "ShiftTable".tr.toUpperCase(),
                                        style: Styles.white14,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        : controller.isjoin
                            ? Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: Dimens.edgeInsets8,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  ColorsValue.whitetext),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(Dimens.eight),
                                              ),
                                              side: const BorderSide(
                                                color: ColorsValue.maincolor1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          controller.update();
                                        },
                                        child: Padding(
                                          padding: Dimens.edgeInsets0_10_0_10,
                                          child: Text(
                                            "cancle".tr.toUpperCase(),
                                            style: Styles.main60014,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: Dimens.edgeInsets8,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  ColorsValue.maincolor1),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(Dimens.eight),
                                              ),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Padding(
                                          padding: Dimens.edgeInsets0_10_0_10,
                                          child: Text(
                                            "joinTable".toUpperCase(),
                                            style: Styles.white60014,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            : Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: Dimens.edgeInsets8,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              ColorsValue.maincolor1,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(Dimens.eight),
                                            ),
                                            side: const BorderSide(
                                              color: ColorsValue.maincolor1,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          if (controller.isselected > -1) {
                                            if (!controller.isshift) {
                                              controller.isshift = true;
                                            }
                                          }
                                          controller.update();
                                        },
                                        child: Padding(
                                          padding: Dimens.edgeInsets0_10_0_10,
                                          child: Text(
                                            'shift'.toUpperCase(),
                                            style: Styles.whiteBold14,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: Dimens.edgeInsets8,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            side: BorderSide(
                                              color: ColorsValue.maincolor1,
                                              width: Dimens.one,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Dimens.eight))),
                                        onPressed: () {
                                          if (controller.isselected > -1) {
                                            if (!controller.isjoin) {
                                              controller.isjoin = true;
                                            }
                                          } else {}
                                          controller.update();
                                        },
                                        child: Padding(
                                          padding: Dimens.edgeInsets0_10_0_10,
                                          child: Text(
                                            'join'.toUpperCase(),
                                            style: Styles.main70014,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
