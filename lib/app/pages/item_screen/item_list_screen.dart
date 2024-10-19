import 'package:final_df/app/app.dart';
import 'package:final_df/app/theme/constan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemController>(builder: (controller) {
      return Scaffold(
        backgroundColor: ColorsValue.white,
        appBar: AppBar(
          // titleTextStyle: Styles.white70018,
          titleTextStyle: context.theme.textTheme.bodyLarge!.copyWith(
            color: ColorsValue.white,
            fontWeight: FontWeight.w700,
            fontSize: Dimens.eighteen,
          ),
          title: Text(
            "Table No.: 05".tr.toUpperCase(),
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Get.back();
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
        floatingActionButton: Visibility(
          visible: true,
          child: Padding(
            padding: Dimens.edgeInsets0,
            // padding: !controller.isKotData
            //     ? Dimens.edgeInsets0
            //     : Dimens.edgeInsetsBottom60,
            child: !context.isTablet
                ? FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        Dimens.sixty,
                      ),
                    ),
                    backgroundColor: ColorsValue.maincolor1,
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: ColorsValue.white,
                    ),
                  )
                : FloatingActionButton.large(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        Dimens.sixty,
                      ),
                    ),
                    backgroundColor: ColorsValue.maincolor1,
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: ColorsValue.white,
                    ),
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
                padding: Dimens.edgeInsets20,
                child: Column(
                  children: [
                    Expanded(
                      child: controller.kotList.length > 0
                          ? ListView.builder(
                              itemCount: 5,
                              itemBuilder: ((context, index) {
                                // var item = controller.kotList[index];
                                return InkWell(
                                  onTap: () {
                                    RouteManagement.goToItemListScreen();
                                    // RouteManagement.goToItemListScreen(
                                    //     controller.kotId ?? "",
                                    //     controller.isParcel,
                                    //     controller.kotList[index].id);
                                  },
                                  child: Padding(
                                    padding: Dimens.edgeInsets0_10_0_10,
                                    child: Container(
                                      padding: Dimens.edgeInsets20_0_20_0,
                                      height: Get.width * .14, //Dimens.sixty
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Dimens.eight,
                                        ),
                                        color: Colors.white,
                                        border: Border.all(
                                          color: ColorsValue.maincolor1,
                                          width: Dimens.one,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("KOT: 05",
                                              style: context
                                                  .theme.textTheme.labelLarge!
                                                  .copyWith(
                                                fontSize:
                                                    context.blockSizeVertical *
                                                        1.7,
                                              )
                                              // Styles.main60012,
                                              ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            size: Dimens.fifteen,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            )
                          : SvgPicture.asset(
                              AssetConstants.ic_data_empty,
                            ),
                    ),
                    Visibility(
                      // visible: !controller.isKotData
                      //     ? false
                      //     : controller.kotData?.isCompleted ?? false
                      //         ? false
                      //         : true,
                      visible: false,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Expanded(
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
                                    side: BorderSide(
                                      color: ColorsValue.maincolor1,
                                      width: Dimens.one,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  // controller.postFinalBill(controller.kotId);
                                },
                                child: Padding(
                                  padding: Dimens.edgeInsets0_10_0_10,
                                  child: Text(
                                    "finalbillgenrate".tr,
                                    style: Styles.white60012,
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
            ),
          ],
        ),
      );
    });
  }
}
