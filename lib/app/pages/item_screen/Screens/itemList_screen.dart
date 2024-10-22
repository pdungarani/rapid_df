import 'package:final_df/app/navigators/navigators.dart';
import 'package:final_df/app/pages/item_screen/item_list_controller.dart';
import 'package:final_df/app/theme/constan.dart';
import 'package:final_df/app/theme/theme.dart';
import 'package:final_df/app/utils/utils.dart';
import 'package:final_df/domain/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemController>(
      initState: (state) {
        final controller = Get.find<ItemController>();
        controller.getoneKots(
          tableId: Get.arguments[1],
          kotId: Get.arguments[0],
        );
      },
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.white,
        appBar: AppBar(
          titleTextStyle:
              context.isTablet ? Styles.whiteBold14 : Styles.white70018,
          title: const Text(
            'itemList',
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Get.back();
              // Get.offAllNamed(Routes.kotScreen,
              //     arguments: ["", controller.isParcel, 1]);
            },
            child: Padding(
              padding:
                  !context.isTablet ? Dimens.edgeInsets10 : Dimens.edgeInsets0,
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
              height: Get.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetConstants.backgroundimage),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: Dimens.edgeInsets20_20_20_0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        controller.isParcel
                            ? "Token no : ${controller.getOneKotData?.id}"
                                .toUpperCase()
                            : controller.kotCount == 0
                                ? "KOT :  ${controller.getOneKotData?.kotNo}"
                                    .toUpperCase()
                                : "KOT : ${controller.kotCount + 1}"
                                    .toUpperCase(),
                        style: Styles.main70016,
                      ),
                      Visibility(
                        visible: controller.isParcel
                            ? false
                            : controller.subKotId != ""
                                ? false
                                : true,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: Dimens.edgeInsets8,
                            backgroundColor: ColorsValue.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                Dimens.six,
                              ),
                              side: BorderSide(
                                color: ColorsValue.maincolor1,
                                width: Dimens.one,
                              ),
                            ),
                          ),
                          onPressed: () {
                            RouteManagement.goToCategoryScreen(
                                tableId: controller.data?.id ?? '');
                            // RouteManagement.goToCategoriesScreen(
                            //     controller.isParcel);
                          },
                          child: Text(
                            "AddItem",
                            style: Styles.maintab60014,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Dimens.boxHeight20,
                Container(
                  decoration: BoxDecoration(
                    color: ColorsValue.whitee,
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        width: Dimens.two,
                        color: ColorsValue.maincolor1,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: Dimens.edgeInsets20_6_20_6,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "srcode".tr,
                                  style: context.theme.textTheme.labelLarge!
                                      .copyWith(
                                    color: ColorsValue.secondorytext,
                                    fontWeight: FontWeight.w600,
                                    fontSize: context.blockSizeVertical * 1.7,
                                  ),
                                  // Styles.titlestyle70014,
                                ),
                                Text(
                                  "menuremark".tr,
                                  style: context.theme.textTheme.labelLarge!
                                      .copyWith(
                                    color: ColorsValue.secondorytext,
                                    fontWeight: FontWeight.w600,
                                    fontSize: context.blockSizeVertical * 1.7,
                                  ),
                                  // style: Styles.titlestyle70014,
                                ),
                                Text(
                                  "",
                                  style: context.theme.textTheme.labelLarge!
                                      .copyWith(
                                    color: ColorsValue.secondorytext,
                                    fontWeight: FontWeight.w600,
                                    fontSize: context.blockSizeVertical * 1.7,
                                  ),
                                  // style: Styles.titlestyle70014,
                                ),
                              ],
                            )),
                        Dimens.boxWidth15,
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "qta".tr,
                                style: context.theme.textTheme.labelLarge!
                                    .copyWith(
                                  color: ColorsValue.secondorytext,
                                  fontWeight: FontWeight.w600,
                                  fontSize: context.blockSizeVertical * 1.7,
                                ),
                                // style: Styles.titlestyle70014,
                              ),
                              Text(
                                "rate".tr,
                                style: context.theme.textTheme.labelLarge!
                                    .copyWith(
                                  color: ColorsValue.secondorytext,
                                  fontWeight: FontWeight.w600,
                                  fontSize: context.blockSizeVertical * 1.7,
                                ),
                                // style: Styles.titlestyle70014,
                              ),
                              Text(
                                "amt".tr,
                                style: context.theme.textTheme.labelLarge!
                                    .copyWith(
                                  color: ColorsValue.secondorytext,
                                  fontWeight: FontWeight.w600,
                                  fontSize: context.blockSizeVertical * 1.7,
                                ),
                                // style: Styles.titlestyle70014,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Dimens.boxHeight20,
                      Center(
                        child: SvgPicture.asset(
                          AssetConstants.ic_empty_img,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Container(
                        height: Dimens.one,
                        width: double.infinity,
                        color: ColorsValue.secondorytext,
                      );
                    },
                    itemCount: controller.getOneKot.length,
                    itemBuilder: (context, index) {
                      final kotItem = controller.getOneKot[index];
                      return controller.getOneKot.isEmpty
                          ? Center(
                              child: SvgPicture.asset(
                                AssetConstants.ic_empty_img,
                              ),
                            )
                          : InkWell(
                              onTap:
                                  Get.find<Repository>().getBoolValue(
                                              LocalKeys.isManager) &&
                                          !controller.isParcel
                                      ? () {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return StatefulBuilder(builder:
                                                    (context, setState) {
                                                  setState(() {
                                                    // print(Get.find<
                                                    //         BottombarController>()
                                                    //     .selectedItem[index]
                                                    //     .remark);
                                                    // controller
                                                    //     .remarkAddItemController
                                                    //     .text = Get.find<
                                                    //             BottombarController>()
                                                    //         .selectedItem[index]
                                                    //         .remark ??
                                                    //     "";
                                                  });
                                                  return Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Material(
                                                        color:
                                                            Colors.transparent,
                                                        child: Padding(
                                                          padding: Dimens
                                                              .edgeInsets20_0_20_0,
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .all(
                                                                      Radius.circular(
                                                                          Dimens
                                                                              .sixteen),
                                                                    ),
                                                                    color: ColorsValue
                                                                        .white),
                                                            width: Get.width,
                                                            child: Padding(
                                                              padding: Dimens
                                                                  .edgeInsets20,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "qtaandremark"
                                                                        .tr
                                                                        .toUpperCase(),
                                                                    style: Styles
                                                                        .underlinetitlestyle70018,
                                                                  ),
                                                                  Dimens
                                                                      .boxHeight20,
                                                                  Row(
                                                                    children: [
                                                                      GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          // Get.find<BottombarController>().selectedItem[index].itemCount > 0
                                                                          //     ? Get.find<BottombarController>().selectedItem[index].itemCount--
                                                                          //     : null;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              Dimens.thirty,
                                                                          width:
                                                                              Dimens.thirty,
                                                                          decoration: BoxDecoration(
                                                                              color: ColorsValue.whitee,
                                                                              borderRadius: BorderRadius.all(
                                                                                Radius.circular(Dimens.six),
                                                                              ),
                                                                              border: Border.all(color: ColorsValue.maincolor1)),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                Dimens.edgeInsets8_0_8_0,
                                                                            child:
                                                                                SvgPicture.asset(AssetConstants.minusicon),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Dimens
                                                                          .boxWidth10,
                                                                      Text(8
                                                                          .toString()),
                                                                      Dimens
                                                                          .boxWidth10,
                                                                      GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          // Get.find<BottombarController>()
                                                                          //     .selectedItem[index]
                                                                          //     .itemCount++;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              Dimens.thirty,
                                                                          width:
                                                                              Dimens.thirty,
                                                                          decoration: BoxDecoration(
                                                                              color: ColorsValue.whitee,
                                                                              borderRadius: BorderRadius.all(
                                                                                Radius.circular(Dimens.six),
                                                                              ),
                                                                              border: Border.all(color: ColorsValue.maincolor1)),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                Dimens.edgeInsets8_0_8_0,
                                                                            child:
                                                                                SvgPicture.asset(AssetConstants.pluseicon),
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  Dimens
                                                                      .boxHeight20,
                                                                  Text(
                                                                    "remark".tr,
                                                                    style: Styles
                                                                        .main60014,
                                                                  ),
                                                                  TextFormField(
                                                                    controller:
                                                                        controller
                                                                            .remarkAddItemController,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      hintText:
                                                                          'hinttext'
                                                                              .tr,
                                                                    ),
                                                                    maxLines: 3,
                                                                  ),
                                                                  Dimens
                                                                      .boxHeight20,
                                                                  Row(
                                                                    children: [
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              Dimens.edgeInsets8,
                                                                          child:
                                                                              ElevatedButton(
                                                                            style:
                                                                                ButtonStyle(
                                                                              backgroundColor: MaterialStateProperty.all<Color>(ColorsValue.whitetext),
                                                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                                                RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.all(
                                                                                    Radius.circular(Dimens.eight),
                                                                                  ),
                                                                                  side: BorderSide(
                                                                                    color: ColorsValue.greyLight,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            onPressed:
                                                                                () {
                                                                              controller.remarkAddItemController.clear();
                                                                              Get.back();
                                                                            },
                                                                            child:
                                                                                Padding(
                                                                              padding: Dimens.edgeInsets0_12_0_12,
                                                                              child: Text("cancle".tr.toUpperCase(), style: Styles.main60014),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              Dimens.edgeInsets0,
                                                                          child:
                                                                              ElevatedButton(
                                                                            style:
                                                                                ButtonStyle(
                                                                              backgroundColor: MaterialStateProperty.all<Color>(ColorsValue.maincolor1),
                                                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                                                RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.all(
                                                                                    Radius.circular(Dimens.eight),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            onPressed:
                                                                                () {
                                                                              // controller.postManagerEditKot(controller.kotId ?? "", controller.subKotId ?? "", "", false);
                                                                              Get.back();
                                                                            },
                                                                            child:
                                                                                Padding(
                                                                              padding: Dimens.edgeInsets0_12_0_12,
                                                                              child: Text(
                                                                                "submit".tr.toUpperCase(),
                                                                                style: Styles.white14,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  );
                                                });
                                              });
                                        }
                                      : () {},
                              child: Padding(
                                padding: Dimens.edgeInsets20_8_20_8,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(kotItem.item?.codeInString ?? '',
                                              style: context
                                                  .theme.textTheme.bodyLarge!
                                                  .copyWith(
                                                      color: ColorsValue
                                                          .secondorytext,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: context
                                                              .blockSizeVertical *
                                                          1.4)
                                              // Styles.secondrytext70014,
                                              ),
                                          Flexible(
                                            child: Padding(
                                              padding: Dimens.edgeInsetsLeft10,
                                              child: Text(
                                                  kotItem.item?.name ?? '',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: context.theme.textTheme
                                                      .bodyLarge!
                                                      .copyWith(
                                                          color: ColorsValue
                                                              .secondorytext,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: context
                                                                  .blockSizeVertical *
                                                              1.4)),
                                            ),
                                          ),
                                          Text("",
                                              style: context
                                                  .theme.textTheme.bodyLarge!
                                                  .copyWith(
                                                      color: ColorsValue
                                                          .secondorytext,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: context
                                                              .blockSizeVertical *
                                                          1.4)
                                              // style: Styles.secondrytext70014,
                                              ),
                                        ],
                                      ),
                                    ),
                                    Dimens.boxWidth15,
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding: Dimens.edgeInsetsLeft10,
                                            child: Text(
                                                "${kotItem.quantity}"
                                                    .toUpperCase(),
                                                style: context
                                                    .theme.textTheme.bodyLarge!
                                                    .copyWith(
                                                        color: ColorsValue
                                                            .secondorytext,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: context
                                                                .blockSizeVertical *
                                                            1.4)
                                                // style: Styles.secondrytext70014,
                                                ),
                                          ),
                                          Padding(
                                            padding: Dimens.edgeInsetsLeft10,
                                            child: Text(
                                                "${kotItem.item?.price}"
                                                    .toUpperCase(),
                                                style: context
                                                    .theme.textTheme.bodyLarge!
                                                    .copyWith(
                                                        color: ColorsValue
                                                            .secondorytext,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: context
                                                                .blockSizeVertical *
                                                            1.4)
                                                // style: Styles.secondrytext70014,
                                                ),
                                          ),
                                          Text(
                                              "${int.parse(kotItem.quantity.toString()) * int.parse(kotItem.item?.price.toString() ?? '')}"
                                                  .toUpperCase(),
                                              style: context
                                                  .theme.textTheme.bodyLarge!
                                                  .copyWith(
                                                      color: ColorsValue
                                                          .secondorytext,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: context
                                                              .blockSizeVertical *
                                                          1.4)
                                              // style: Styles.secondrytext70014,
                                              ),
                                        ],
                                      ),
                                    ),
                                    Visibility(
                                      visible: Get.find<Repository>()
                                                  .getBoolValue(
                                                      LocalKeys.isManager) &&
                                              controller.subKotId != ""
                                          ? true
                                          : false,
                                      child: InkWell(
                                        onTap: () {
                                          // controller.postManagerEditKot(
                                          //     controller.kotId,
                                          //     controller.subKotId,
                                          //     item.id ?? "",
                                          //     true);
                                        },
                                        child: Icon(
                                          Icons.remove_circle,
                                          color: ColorsValue.redColor,
                                          size: Dimens.twenty,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                    },
                  ),
                ),
                Padding(
                  padding: Dimens.edgeInsets20_10_20_20,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Visibility(
                          visible: controller.isParcel ? true : false,
                          child: Expanded(
                            flex: 2,
                            child: Padding(
                              padding: Dimens.edgeInsets8,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(
                                    double.infinity,
                                    Dimens.fourtyFour,
                                  ),
                                  backgroundColor: ColorsValue.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      Dimens.six,
                                    ),
                                    side: BorderSide(
                                      color: true
                                          ? ColorsValue.maincolor1
                                              .withOpacity(0.4)
                                          : ColorsValue.maincolor1,
                                      width: Dimens.one,
                                    ),
                                  ),
                                ),
                                onPressed: false
                                    ? () {}
                                    : () {
                                        if (controller.isParcel) {
                                          // controller.createParcelOrder(context);
                                        }
                                      },
                                child: Padding(
                                  padding: Dimens.edgeInsets0_10_0_10,
                                  child: Text(
                                    "billgenrate".tr,
                                    style: false
                                        ? Styles.mainopacitytab60014
                                        : Styles.main60012,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: controller.isParcel
                              ? false
                              : controller.subKotId != ""
                                  ? false
                                  : true,
                          child: Expanded(
                            flex: 2,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(
                                  double.infinity,
                                  Dimens.fourtyFour,
                                ),
                                backgroundColor: ColorsValue.maincolor1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    Dimens.six,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                // controller.postAddEditOrder();
                              },
                              child: Padding(
                                padding: Dimens.edgeInsets0_10_0_10,
                                child: Text("kotbillgenrate".tr.toUpperCase(),
                                    style: context.theme.textTheme.bodyLarge!
                                        .copyWith(
                                      color: ColorsValue.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: context.blockSizeVertical * 2,
                                    )
                                    //  Styles.white60012,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: controller.subKotId != "" ? true : false,
                          child: Expanded(
                            flex: 2,
                            child: Padding(
                              padding: Dimens.edgeInsets8,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(
                                    double.infinity,
                                    Dimens.fourtyFour,
                                  ),
                                  backgroundColor: ColorsValue.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      Dimens.six,
                                    ),
                                    side: BorderSide(
                                      color: ColorsValue.maincolor1,
                                      width: Dimens.one,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  // controller.postDownloadKot(
                                  //     controller.kotId ?? "",
                                  //     controller.subKotId ?? "");
                                },
                                child: Padding(
                                  padding: Dimens.edgeInsets0_10_0_10,
                                  child: Text(
                                    "download_kot".tr,
                                    style: Styles.main60012,
                                  ),
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
            )
          ],
        ),
      ),
    );
  }
}
