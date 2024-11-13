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
        controller.getOneKots(Get.arguments ?? "");
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
              Get.offAllNamed(Routes.kotScreenMobile,
                  arguments: controller.tableId);
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
                        "Kot : ${controller.getOneKotData?.kotNo.toString() ?? ""}",
                        style: Styles.main70016,
                      ),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          ),
                        ),
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
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Container(
                        height: Dimens.one,
                        width: double.infinity,
                        color: ColorsValue.secondorytext,
                      );
                    },
                    itemCount: controller.getOneKotData?.items?.length ?? 0,
                    itemBuilder: (context, index) {
                      var itemData = controller.getOneKotData?.items?[index];
                      return itemData != null
                          ? InkWell(
                              child: Padding(
                                padding: Dimens.edgeInsets20_8_20_8,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            itemData?.item?.code.toString() ??
                                                "",
                                            style: Styles.secondrytext70014,
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding: Dimens.edgeInsetsLeft10,
                                              child: Text(
                                                "${itemData?.item?.name}"
                                                    .toUpperCase(),
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
                                              "${itemData?.quantity}"
                                                  .toUpperCase(),
                                              style: Styles.secondrytext70014,
                                            ),
                                          ),
                                          Padding(
                                            padding: Dimens.edgeInsetsLeft10,
                                            child: Text(
                                              "${itemData?.item?.price}"
                                                  .toUpperCase(),
                                              style: Styles.secondrytext70014,
                                            ),
                                          ),
                                          Text(
                                            "${int.parse(itemData?.item?.price.toString() ?? "") * int.parse(itemData?.quantity.toString() ?? "")}"
                                                .toUpperCase(),
                                            style: Styles.secondrytext70014,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Center(
                              child: SvgPicture.asset(
                                AssetConstants.ic_empty_img,
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
                        Expanded(
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
                                controller.downloadKot(Get.arguments ?? "");
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
