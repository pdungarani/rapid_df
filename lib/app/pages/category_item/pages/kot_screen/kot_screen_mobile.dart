import 'package:final_df/app/app.dart';
import 'package:final_df/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class KotScreenMobile extends StatelessWidget {
  const KotScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoriesItemController>(initState: (state) {
      var controller = Get.find<CategoriesItemController>();
      controller.tableId = Get.arguments ?? "";
      controller.getAllKots(Get.arguments ?? "");
    }, builder: (controller) {
      return PopScope(
        canPop: true,
        onPopInvokedWithResult: (bool didPop, Object? result) async {},
        child: Scaffold(
          backgroundColor: ColorsValue.white,
          appBar: AppBar(
            titleTextStyle: Styles.white70018,
            title: Text(
              "Table No : ${Get.find<Repository>().getStringValue(LocalKeys.tableNum)}"
                  .tr
                  .toUpperCase(),
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
          floatingActionButton: Visibility(
            visible:
                Utility.getAssignDatum?.isCompleted ?? false ? false : true,
            child: Padding(
              padding: controller.kotList.isEmpty
                  ? Dimens.edgeInsets0
                  : Dimens.edgeInsetsBottom60,
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    Dimens.sixty,
                  ),
                ),
                backgroundColor: ColorsValue.maincolor1,
                onPressed: () {
                  controller.addCategoryItemList.clear();
                  controller.update();
                  RouteManagement.goToCategoriesItemMobile(Get.arguments ?? "");
                },
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
                        child: controller.kotList.isNotEmpty
                            ? ListView.builder(
                                itemCount: controller.kotList.length,
                                itemBuilder: ((context, index) {
                                  var item = controller.kotList[index];
                                  return InkWell(
                                    onTap: () {
                                      RouteManagement
                                          .goToItemListScreenMobileGetOne(
                                              controller.kotList[index].id ??
                                                  "");
                                    },
                                    child: Padding(
                                      padding: Dimens.edgeInsets0_10_0_10,
                                      child: Container(
                                        padding: Dimens.edgeInsets20_0_20_0,
                                        height: Dimens.sixty,
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
                                            Text(
                                              "KOT: ${item.kotNo}",
                                              style: Styles.main60012,
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
                        visible: Utility.getAssignDatum?.isCompleted ?? false
                            ? false
                            : true,
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
                                    controller.postJointTable(
                                        controller.tableId ?? "");
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
        ),
      );
    });
  }
}
