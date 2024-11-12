import 'package:final_df/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ItemListScreenMobile extends StatelessWidget {
  const ItemListScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoriesItemController>(
      initState: (state) {
        var controller = Get.find<CategoriesItemController>();

        // if (!controller.isParcel &&
        //     controller.kotId != "" &&
        //     controller.subKotId != "") {
        //   controller.getOneKot(
        //       controller.kotId ?? "", controller.subKotId ?? "");
        // } else {
        //   controller.parcelId = Get.arguments[0] ?? "";
        //   if (controller.isParcel &&
        //       (controller.parcelId?.isNotEmpty ?? false)) {
        //     controller.getOneParcel();
        //   }
        // }
      },
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.white,
        appBar: AppBar(
          titleTextStyle: Styles.white70018,
          title: Text(
            'itemList'.tr,
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Get.back();
              // Get.offAllNamed(Routes.kotScreen,
              //     arguments: ["", controller.isParcel, 1]);
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
                        "Token",
                        // controller.isParcel
                        //     ? "Token no : ${controller.getOneParcelModel?.data?.token ?? 0}"
                        //         .toUpperCase()
                        //     : controller.kotCount == 0
                        //         ? "KOT : ${controller.kotDetailData?.kotNo ?? 1}"
                        //             .toUpperCase()
                        //         : "KOT : ${controller.kotCount + 1}"
                        //             .toUpperCase(),
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
                            // RouteManagement.goToCategoriesScreen(
                            //     controller.isParcel);
                          },
                          child: Text(
                            "additem".tr,
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
                                  style: Styles.titlestyle70014,
                                ),
                                Text(
                                  "menuremark".tr,
                                  style: Styles.titlestyle70014,
                                ),
                                Text(
                                  "",
                                  style: Styles.titlestyle70014,
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
                                style: Styles.titlestyle70014,
                              ),
                              Text(
                                "rate".tr,
                                style: Styles.titlestyle70014,
                              ),
                              Text(
                                "amt".tr,
                                style: Styles.titlestyle70014,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: controller.getCategoryItemList.isEmpty,
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
                    itemCount: controller.getCategoryItemList.length,
                    itemBuilder: (context, index) {
                      var item = controller.getCategoryItemList[index];
                      return controller.getCategoryItemList.isEmpty
                          ? Center(
                              child: SvgPicture.asset(
                                AssetConstants.ic_empty_img,
                              ),
                            )
                          : InkWell(
                              // onTap:
                              //     Get.find<Repository>().getBoolValue(
                              //                 LocalKeys.isManager) &&
                              //             !controller.isParcel
                              //         ? () {
                              //             showDialog(
                              //                 context: context,
                              //                 builder: (context) {
                              //                   return StatefulBuilder(builder:
                              //                       (context, setState) {
                              //                     setState(() {
                              //                       print(Get.find<
                              //                               BottombarController>()
                              //                           .selectedItem[index]
                              //                           .remark);
                              //                       controller
                              //                           .remarkAddItemController
                              //                           .text = Get.find<
                              //                                   BottombarController>()
                              //                               .selectedItem[index]
                              //                               .remark ??
                              //                           "";
                              //                     });
                              //                     return Column(
                              //                       mainAxisAlignment:
                              //                           MainAxisAlignment
                              //                               .center,
                              //                       mainAxisSize:
                              //                           MainAxisSize.min,
                              //                       children: [
                              //                         Material(
                              //                           color:
                              //                               Colors.transparent,
                              //                           child: Padding(
                              //                             padding: Dimens
                              //                                 .edgeInsets20_0_20_0,
                              //                             child: Container(
                              //                               decoration:
                              //                                   BoxDecoration(
                              //                                       borderRadius:
                              //                                           BorderRadius
                              //                                               .all(
                              //                                         Radius.circular(
                              //                                             Dimens
                              //                                                 .sixteen),
                              //                                       ),
                              //                                       color: ColorsValue
                              //                                           .white),
                              //                               width: Get.width,
                              //                               child: Padding(
                              //                                 padding: Dimens
                              //                                     .edgeInsets20,
                              //                                 child: Column(
                              //                                   crossAxisAlignment:
                              //                                       CrossAxisAlignment
                              //                                           .start,
                              //                                   children: [
                              //                                     Text(
                              //                                       "qtaandremark"
                              //                                           .tr
                              //                                           .toUpperCase(),
                              //                                       style: Styles
                              //                                           .underlinetitlestyle70018,
                              //                                     ),
                              //                                     Dimens
                              //                                         .boxHeight20,
                              //                                     Row(
                              //                                       children: [
                              //                                         GestureDetector(
                              //                                           onTap:
                              //                                               () {
                              //                                             Get.find<BottombarController>().selectedItem[index].itemCount > 0
                              //                                                 ? Get.find<BottombarController>().selectedItem[index].itemCount--
                              //                                                 : null;
                              //                                             setState(
                              //                                                 () {});
                              //                                           },
                              //                                           child:
                              //                                               Container(
                              //                                             height:
                              //                                                 Dimens.thirty,
                              //                                             width:
                              //                                                 Dimens.thirty,
                              //                                             decoration: BoxDecoration(
                              //                                                 color: ColorsValue.whitee,
                              //                                                 borderRadius: BorderRadius.all(
                              //                                                   Radius.circular(Dimens.six),
                              //                                                 ),
                              //                                                 border: Border.all(color: ColorsValue.maincolor1)),
                              //                                             child:
                              //                                                 Padding(
                              //                                               padding:
                              //                                                   Dimens.edgeInsets8_0_8_0,
                              //                                               child:
                              //                                                   SvgPicture.asset(AssetConstants.minusicon),
                              //                                             ),
                              //                                           ),
                              //                                         ),
                              //                                         Dimens
                              //                                             .boxWidth10,
                              //                                         Text(Get.find<
                              //                                                 BottombarController>()
                              //                                             .selectedItem[
                              //                                                 index]
                              //                                             .itemCount
                              //                                             .toString()),
                              //                                         Dimens
                              //                                             .boxWidth10,
                              //                                         GestureDetector(
                              //                                           onTap:
                              //                                               () {
                              //                                             Get.find<BottombarController>()
                              //                                                 .selectedItem[index]
                              //                                                 .itemCount++;
                              //                                             setState(
                              //                                                 () {});
                              //                                           },
                              //                                           child:
                              //                                               Container(
                              //                                             height:
                              //                                                 Dimens.thirty,
                              //                                             width:
                              //                                                 Dimens.thirty,
                              //                                             decoration: BoxDecoration(
                              //                                                 color: ColorsValue.whitee,
                              //                                                 borderRadius: BorderRadius.all(
                              //                                                   Radius.circular(Dimens.six),
                              //                                                 ),
                              //                                                 border: Border.all(color: ColorsValue.maincolor1)),
                              //                                             child:
                              //                                                 Padding(
                              //                                               padding:
                              //                                                   Dimens.edgeInsets8_0_8_0,
                              //                                               child:
                              //                                                   SvgPicture.asset(AssetConstants.pluseicon),
                              //                                             ),
                              //                                           ),
                              //                                         )
                              //                                       ],
                              //                                     ),
                              //                                     Dimens
                              //                                         .boxHeight20,
                              //                                     Text(
                              //                                       "remark".tr,
                              //                                       style: Styles
                              //                                           .main60014,
                              //                                     ),
                              //                                     TextFormField(
                              //                                       controller:
                              //                                           controller
                              //                                               .remarkAddItemController,
                              //                                       decoration:
                              //                                           InputDecoration(
                              //                                         hintText:
                              //                                             'hinttext'
                              //                                                 .tr,
                              //                                       ),
                              //                                       maxLines: 3,
                              //                                     ),
                              //                                     Dimens
                              //                                         .boxHeight20,
                              //                                     Row(
                              //                                       children: [
                              //                                         Expanded(
                              //                                           flex: 2,
                              //                                           child:
                              //                                               Padding(
                              //                                             padding:
                              //                                                 Dimens.edgeInsets8,
                              //                                             child:
                              //                                                 ElevatedButton(
                              //                                               style:
                              //                                                   ButtonStyle(
                              //                                                 backgroundColor: MaterialStateProperty.all<Color>(ColorsValue.whitetext),
                              //                                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              //                                                   RoundedRectangleBorder(
                              //                                                     borderRadius: BorderRadius.all(
                              //                                                       Radius.circular(Dimens.eight),
                              //                                                     ),
                              //                                                     side: BorderSide(
                              //                                                       color: ColorsValue.greyLight,
                              //                                                     ),
                              //                                                   ),
                              //                                                 ),
                              //                                               ),
                              //                                               onPressed:
                              //                                                   () {
                              //                                                 controller.remarkAddItemController.clear();
                              //                                                 Get.back();
                              //                                               },
                              //                                               child:
                              //                                                   Padding(
                              //                                                 padding: Dimens.edgeInsets0_12_0_12,
                              //                                                 child: Text("cancle".tr.toUpperCase(), style: Styles.main60014),
                              //                                               ),
                              //                                             ),
                              //                                           ),
                              //                                         ),
                              //                                         Expanded(
                              //                                           flex: 2,
                              //                                           child:
                              //                                               Padding(
                              //                                             padding:
                              //                                                 Dimens.edgeInsets0,
                              //                                             child:
                              //                                                 ElevatedButton(
                              //                                               style:
                              //                                                   ButtonStyle(
                              //                                                 backgroundColor: MaterialStateProperty.all<Color>(ColorsValue.maincolor1),
                              //                                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              //                                                   RoundedRectangleBorder(
                              //                                                     borderRadius: BorderRadius.all(
                              //                                                       Radius.circular(Dimens.eight),
                              //                                                     ),
                              //                                                   ),
                              //                                                 ),
                              //                                               ),
                              //                                               onPressed:
                              //                                                   () {
                              //                                                 controller.postManagerEditKot(controller.kotId ?? "", controller.subKotId ?? "", "", false);
                              //                                                 Get.back();
                              //                                               },
                              //                                               child:
                              //                                                   Padding(
                              //                                                 padding: Dimens.edgeInsets0_12_0_12,
                              //                                                 child: Text(
                              //                                                   "submit".tr.toUpperCase(),
                              //                                                   style: Styles.white14,
                              //                                                 ),
                              //                                               ),
                              //                                             ),
                              //                                           ),
                              //                                         )
                              //                                       ],
                              //                                     ),
                              //                                   ],
                              //                                 ),
                              //                               ),
                              //                             ),
                              //                           ),
                              //                         )
                              //                       ],
                              //                     );
                              //                   });
                              //                 });
                              //           }
                              //         : () {},
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
                                          Text(
                                            item.code.toString(),
                                            style: Styles.secondrytext70014,
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding: Dimens.edgeInsetsLeft10,
                                              child: Text(
                                                "${item.name}".toUpperCase(),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: Styles.secondrytext70014,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "",
                                            style: Styles.secondrytext70014,
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
                                              "${item.itemCount}".toUpperCase(),
                                              style: Styles.secondrytext70014,
                                            ),
                                          ),
                                          Padding(
                                            padding: Dimens.edgeInsetsLeft10,
                                            child: Text(
                                              "${item.originalPrice}"
                                                  .toUpperCase(),
                                              style: Styles.secondrytext70014,
                                            ),
                                          ),
                                          Text(
                                            "${int.parse(item.originalPrice.toString()) * int.parse(item.itemCount.toString())}"
                                                .toUpperCase(),
                                            style: Styles.secondrytext70014,
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
                                          controller.postManagerEditKot(
                                              controller.kotId,
                                              controller.subKotId,
                                              item.id ?? "",
                                              true);
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
                // Padding(
                //   padding: Dimens.edgeInsets20_10_20_20,
                //   child: Align(
                //     alignment: Alignment.bottomCenter,
                //     child: Row(
                //       children: [
                //         Visibility(
                //           visible: controller.isParcel ? true : false,
                //           child: Expanded(
                //             flex: 2,
                //             child: Padding(
                //               padding: Dimens.edgeInsets8,
                //               child: ElevatedButton(
                //                 style: ElevatedButton.styleFrom(
                //                   fixedSize: Size(
                //                     double.infinity,
                //                     Dimens.fourtyFour,
                //                   ),
                //                   backgroundColor: ColorsValue.white,
                //                   shape: RoundedRectangleBorder(
                //                     borderRadius: BorderRadius.circular(
                //                       Dimens.six,
                //                     ),
                //                     side: BorderSide(
                //                       color:
                //                           controller.getOneParcelModel?.data !=
                //                                   null
                //                               ? ColorsValue.maincolor1
                //                                   .withOpacity(0.4)
                //                               : ColorsValue.maincolor1,
                //                       width: Dimens.one,
                //                     ),
                //                   ),
                //                 ),
                //                 onPressed: controller.getOneParcelModel?.data !=
                //                         null
                //                     ? () {}
                //                     : () {
                //                         if (controller.isParcel) {
                //                           controller.createParcelOrder(context);
                //                         }
                //                       },
                //                 child: Padding(
                //                   padding: Dimens.edgeInsets0_10_0_10,
                //                   child: Text(
                //                     "billgenrate".tr,
                //                     style: controller.getOneParcelModel?.data !=
                //                             null
                //                         ? Styles.mainopacitytab60014
                //                         : Styles.main60012,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ),
                //         Visibility(
                //           visible: controller.isParcel
                //               ? false
                //               : controller.subKotId != ""
                //                   ? false
                //                   : true,
                //           child: Expanded(
                //             flex: 2,
                //             child: ElevatedButton(
                //               style: ElevatedButton.styleFrom(
                //                 fixedSize: Size(
                //                   double.infinity,
                //                   Dimens.fourtyFour,
                //                 ),
                //                 backgroundColor: ColorsValue.maincolor1,
                //                 shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(
                //                     Dimens.six,
                //                   ),
                //                 ),
                //               ),
                //               onPressed: () {
                //                 controller.postAddEditOrder();
                //               },
                //               child: Padding(
                //                 padding: Dimens.edgeInsets0_10_0_10,
                //                 child: Text(
                //                   "kotbillgenrate".tr.toUpperCase(),
                //                   style: Styles.white60012,
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ),
                //         Visibility(
                //           visible: controller.subKotId != "" ? true : false,
                //           child: Expanded(
                //             flex: 2,
                //             child: Padding(
                //               padding: Dimens.edgeInsets8,
                //               child: ElevatedButton(
                //                 style: ElevatedButton.styleFrom(
                //                   fixedSize: Size(
                //                     double.infinity,
                //                     Dimens.fourtyFour,
                //                   ),
                //                   backgroundColor: ColorsValue.white,
                //                   shape: RoundedRectangleBorder(
                //                     borderRadius: BorderRadius.circular(
                //                       Dimens.six,
                //                     ),
                //                     side: BorderSide(
                //                       color: ColorsValue.maincolor1,
                //                       width: Dimens.one,
                //                     ),
                //                   ),
                //                 ),
                //                 onPressed: () {
                //                   controller.postDownloadKot(
                //                       controller.kotId ?? "",
                //                       controller.subKotId ?? "");
                //                 },
                //                 child: Padding(
                //                   padding: Dimens.edgeInsets0_10_0_10,
                //                   child: Text(
                //                     "download_kot".tr,
                //                     style: Styles.main60012,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
