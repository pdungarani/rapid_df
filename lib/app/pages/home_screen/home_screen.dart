import 'package:final_df/app/app.dart';
import 'package:final_df/app/theme/constan.dart';
import 'package:final_df/domain/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
                            style: context.theme.textTheme.titleLarge!.copyWith(
                              color: ColorsValue.lightmaincolor,
                              fontSize: context.blockSizeVertical * 2.4,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          RouteManagement.goToProfileScreen();
                        },
                        child: Image.asset(
                          AssetConstants.profile,
                          height: Dimens.fifty,
                          width: Dimens.fifty,
                        ),
                      ),
                      Dimens.boxWidth10,
                    ],
                  ),
                  Dimens.boxHeight10,
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () => Future.sync(
                        () => controller.getAssignedTables(),
                      ),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: Dimens.fourty,
                          crossAxisSpacing: Dimens.twelve,
                          mainAxisSpacing: Dimens.twelve,
                        ),
                        itemCount: controller.tableList.length,
                        padding: Dimens.edgeInsets0_08_0_08,
                        itemBuilder: (context, index) {
                          final tableDetail = controller.tableList[index];
                          return InkWell(
                            onTap: () {
                              Utility.getAssignDatum = tableDetail;
                              Get.find<Repository>().saveValue(
                                  LocalKeys.tableNum,
                                  tableDetail.tNumber.toString());
                              RouteManagement.goToKotScreen(
                                  tableDetail.id ?? "");
                            },
                            onLongPress: () {
                              controller.joinTableList.clear();
                              if (controller.isselected == index) {
                                controller.isselected = -1;
                                controller.tableList[index].isSelect = false;
                                controller.joinTableList.remove(
                                    controller.tableList[index].id ?? "");
                              } else if (controller
                                      .tableList[index].isOccupied ==
                                  true) {
                                controller.isselected = index;
                                controller.tableList[index].isSelect = true;
                                controller.joinTableList
                                    .add(controller.tableList[index].id ?? "");
                              }
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
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        controller.tableList[index].isOccupied!
                                            ? Visibility(
                                                visible: controller.isjoin
                                                    ? false
                                                    : true,
                                                child: Padding(
                                                  padding:
                                                      Dimens.edgeInsetsLeft15,
                                                  child: Center(
                                                    child: SvgPicture.asset(
                                                      AssetConstants.isocupaid,
                                                      colorFilter:
                                                          const ColorFilter
                                                              .mode(
                                                        Colors.red,
                                                        BlendMode.srcIn,
                                                      ),
                                                      height: Dimens.twenty,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : controller.isshift
                                                ? Radio(
                                                    value: index.toString(),
                                                    fillColor:
                                                        WidgetStateProperty
                                                            .resolveWith<Color>(
                                                      (Set<WidgetState>
                                                          states) {
                                                        return ColorsValue
                                                            .maincolor1;
                                                      },
                                                    ),
                                                    groupValue: controller
                                                        .selectaddressecommerce,
                                                    onChanged: (value) {
                                                      controller
                                                              .selectaddressecommerce =
                                                          value!;
                                                      controller.update();
                                                    },
                                                  )
                                                : Container(),
                                        controller.isjoin &&
                                                controller.tableList[index]
                                                    .isOccupied! &&
                                                !controller.tableList[index]
                                                    .isCompleted! &&
                                                controller.isselected != index
                                            ? Checkbox(
                                                fillColor:
                                                    WidgetStatePropertyAll(
                                                  controller.tableList[index]
                                                              .isSelect ??
                                                          false
                                                      ? ColorsValue.maincolor1
                                                      : ColorsValue.white,
                                                ),
                                                shape: BeveledRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    Dimens.two,
                                                  ),
                                                ),
                                                side: BorderSide(
                                                  color: ColorsValue.maincolor1,
                                                  width: Dimens.one,
                                                ),
                                                activeColor:
                                                    ColorsValue.maincolor1,
                                                focusColor:
                                                    ColorsValue.maincolor1,
                                                autofocus: true,
                                                checkColor: ColorsValue.white,
                                                value: controller
                                                    .tableList[index].isSelect,
                                                onChanged: (value) {
                                                  controller.tableList[index]
                                                      .isSelect = value!;
                                                  if (value) {
                                                    controller.joinTableList
                                                        .add(controller
                                                                .tableList[
                                                                    index]
                                                                .id ??
                                                            "");
                                                  } else {
                                                    controller.joinTableList
                                                        .remove(controller
                                                                .tableList[
                                                                    index]
                                                                .id ??
                                                            "");
                                                  }
                                                  controller.update();
                                                },
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        '${controller.tableList[index].tNumber}',
                                        style: controller.isselected == index
                                            ? Styles.white60012
                                            : Styles.main60012,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: "" == "joint "
                                        // controller.tableList[index].orderid
                                        //             ?.type ==
                                        //         "joint"
                                        ? SvgPicture.asset(
                                            AssetConstants.ic_join,
                                          )
                                        : Container(),
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
                                          WidgetStateProperty.all<Color>(
                                              controller.isselected < -1
                                                  ? ColorsValue
                                                      .mainwithopacitycolor
                                                  : ColorsValue.maincolor1),
                                      shape: WidgetStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(Dimens.eight),
                                          ),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      controller.postShiftOrder();
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
                                              WidgetStateProperty.all<Color>(
                                                  ColorsValue.whitetext),
                                          shape: WidgetStateProperty.all<
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
                                          if (controller.isjoin) {
                                            controller.isjoin = false;
                                            controller.isselected = -1;
                                            for (var data
                                                in controller.tableList) {
                                              data.isSelect = false;
                                            }
                                          }
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
                                        onPressed: () {
                                          controller.postJointTable();
                                        },
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
