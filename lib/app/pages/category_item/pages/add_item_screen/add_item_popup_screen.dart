import 'package:final_df/app/app.dart';
import 'package:final_df/domain/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AddItemPopupScreen extends StatelessWidget {
  const AddItemPopupScreen({super.key, required this.selectedItem});
  final CategoryItemData selectedItem;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoriesItemController>(builder: (controller) {
      return Material(
        color: ColorsValue.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: Dimens.edgeInsets20_0_20_0,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimens.sixteen),
                    ),
                    color: ColorsValue.white),
                width: Get.width,
                child: Padding(
                  padding: Dimens.edgeInsets20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "qtaandremark".tr.toUpperCase(),
                        style: Styles.underlinetitlestyle70018,
                      ),
                      Dimens.boxHeight20,
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.count > 0 ? controller.count-- : null;
                              controller.update();
                            },
                            child: Container(
                              height: Dimens.thirty,
                              width: Dimens.thirty,
                              decoration: BoxDecoration(
                                  color: ColorsValue.whitee,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(Dimens.six),
                                  ),
                                  border: Border.all(
                                      color: ColorsValue.maincolor1)),
                              child: Padding(
                                padding: Dimens.edgeInsets8_0_8_0,
                                child:
                                    SvgPicture.asset(AssetConstants.minusicon),
                              ),
                            ),
                          ),
                          Dimens.boxWidth10,
                          Text(
                            controller.count.toString(),
                          ),
                          Dimens.boxWidth10,
                          GestureDetector(
                            onTap: () {
                              controller.count++;
                              controller.update();
                            },
                            child: Container(
                              height: Dimens.thirty,
                              width: Dimens.thirty,
                              decoration: BoxDecoration(
                                  color: ColorsValue.whitee,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(Dimens.six),
                                  ),
                                  border: Border.all(
                                      color: ColorsValue.maincolor1)),
                              child: Padding(
                                padding: Dimens.edgeInsets8_0_8_0,
                                child:
                                    SvgPicture.asset(AssetConstants.pluseicon),
                              ),
                            ),
                          )
                        ],
                      ),
                      Dimens.boxHeight20,
                      Text(
                        "remark".tr,
                        style: Styles.main60014,
                      ),
                      Dimens.boxHeight5,
                      TextFormField(
                        controller: controller.remarkAddItemController,
                        decoration: InputDecoration(
                          hintText: 'hinttext'.tr,
                        ),
                        maxLines: 3,
                      ),
                      Dimens.boxHeight20,
                      Row(
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
                                      side: BorderSide(
                                        color: ColorsValue.greyLight,
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  controller.remarkAddItemController.clear();
                                  Get.back();
                                },
                                child: Padding(
                                  padding: Dimens.edgeInsets0_12_0_12,
                                  child: Text("cancle".tr.toUpperCase(),
                                      style: Styles.main60014),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: Dimens.edgeInsets0,
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
                                  if (controller.count > 0) {
                                    selectedItem.isAdded = true;
                                    selectedItem.itemCount = controller.count;
                                  } else {
                                    selectedItem.isAdded = false;
                                    selectedItem.itemCount = controller.count;
                                  }
                                  controller.remarkAddItemController.clear();
                                  var i = controller.addCategoryItemList
                                      .indexWhere((element) =>
                                          element.id == selectedItem.id);
                                  if (i.isNegative) {
                                    controller.addCategoryItemList
                                        .add(selectedItem);
                                  } else {
                                    controller.addCategoryItemList[i] =
                                        selectedItem;
                                  }
                                  controller.update();
                                  Get.back();
                                },
                                child: Padding(
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
            )
          ],
        ),
      );
    });
  }
}
