import 'package:final_df/app/app.dart';
import 'package:final_df/domain/models/create_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AddItemScreenMobile extends StatelessWidget {
  const AddItemScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final _debouncer = Debouncer(milliseconds: 500);
    return GetBuilder<CategoriesItemController>(
      initState: (s) {
        var controller = Get.find<CategoriesItemController>();
        controller.categoryId = Get.arguments;
        controller.postCategoryItem(
          categoryId: Get.arguments,
          search: controller.searchAddItemController.text,
          isLoading: true,
        );
        controller.getOneCategory();
      },
      builder: (controller) {
        return Scaffold(
          backgroundColor: ColorsValue.white,
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
              SafeArea(
                child: Padding(
                  padding: Dimens.edgeInsets20_0_20_0,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: SvgPicture.asset(
                              AssetConstants.backarrowicon,
                              color: ColorsValue.blackColor,
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "additems".tr.toUpperCase(),
                                style: Styles.titlestyletab70020,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Dimens.boxHeight10,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 9,
                            child: TextFormField(
                              controller: controller.searchAddItemController,
                              onChanged: (value) {
                                _debouncer.run(() {
                                  Future.sync(
                                    () => controller.postCategoryItem(
                                      search: value.toString(),
                                      categoryId: Get.arguments,
                                    ),
                                  );
                                });
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: Dimens.ten,
                                ),
                                prefixIcon: const Icon(Icons.search),
                                fillColor: ColorsValue.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                    Dimens.sixteen,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                    Dimens.sixteen,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                    Dimens.sixteen,
                                  ),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                    Dimens.sixteen,
                                  ),
                                ),
                                focusColor: ColorsValue.maincolor1,
                                hoverColor: ColorsValue.maincolor1,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                    Dimens.sixteen,
                                  ),
                                ),
                                hintText: 'searchhear'.tr,
                              ),
                            ),
                          ),
                          Dimens.boxWidth10,
                          Expanded(
                            flex: 2,
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  backgroundColor: ColorsValue.lightwhitetext,
                                  builder: (context) {
                                    return StatefulBuilder(
                                      builder: (context, setState) {
                                        return Container(
                                          width: double.infinity,
                                          padding: Dimens.edgeInsets20,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  Dimens.thirty),
                                              topRight: Radius.circular(
                                                Dimens.thirty,
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "filter_option".tr,
                                                style:
                                                    Styles.lightMainColor70018,
                                              ),
                                              Dimens.boxHeight20,
                                              Text(
                                                "selectcategory".tr,
                                                style: Styles.grey9CA3AF60012,
                                              ),
                                              Dimens.boxHeight4,
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      Dimens.twelve,
                                                    ),
                                                    border: Border.all(
                                                        color: ColorsValue
                                                            .greyLight,
                                                        width: Dimens.one),
                                                    color: ColorsValue.white),
                                                child: DropdownButton<String>(
                                                  dropdownColor:
                                                      ColorsValue.white,
                                                  underline: Container(),
                                                  hint: Text(
                                                      'selectcategory'.tr,
                                                      style: Styles.bold14),
                                                  padding: EdgeInsets.only(
                                                      left: Dimens.ten,
                                                      right: Dimens.ten),
                                                  isExpanded: true,
                                                  isDense: false,
                                                  icon: SvgPicture.asset(
                                                      AssetConstants
                                                          .ic_down_arrow),
                                                  value: controller
                                                      .selectedCategory,
                                                  items: controller
                                                      .oneCategoryDatumList
                                                      .map(
                                                        (value) =>
                                                            DropdownMenuItem(
                                                          value: value.id,
                                                          child: Text(
                                                            value.name ?? "",
                                                            style: Styles
                                                                .main60012,
                                                          ),
                                                        ),
                                                      )
                                                      .toList(),
                                                  onChanged: (newValue) {
                                                    controller
                                                            .selectedCategory =
                                                        newValue ?? "";
                                                    setState(() {});
                                                  },
                                                ),
                                              ),
                                              Dimens.boxHeight30,
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: InkWell(
                                                      onTap: () {
                                                        controller
                                                            .selectedCategory = "";
                                                        controller.postCategoryItem(
                                                            search: "",
                                                            categoryId: controller
                                                                    .selectedCategory ??
                                                                "");
                                                        controller.isFilter =
                                                            false;
                                                        Get.back();
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        height:
                                                            Dimens.fourtyFive,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            Dimens.eight,
                                                          ),
                                                          color: Colors
                                                              .transparent,
                                                          border: Border.all(
                                                              color: ColorsValue
                                                                  .maincolor1),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            "cancel"
                                                                .tr
                                                                .toUpperCase(),
                                                            style: Styles
                                                                .main60014,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Dimens.boxWidth12,
                                                  Expanded(
                                                    child: InkWell(
                                                      onTap: () {
                                                        controller.postCategoryItem(
                                                            search: "",
                                                            categoryId: controller
                                                                    .selectedCategory ??
                                                                "");
                                                        controller.isFilter =
                                                            true;
                                                        Get.back();
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        height:
                                                            Dimens.fourtyFive,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            Dimens.eight,
                                                          ),
                                                          color: ColorsValue
                                                              .maincolor1,
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            "apply"
                                                                .tr
                                                                .toUpperCase(),
                                                            style: Styles
                                                                .white60014,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                              child: Container(
                                height: Dimens.fifty,
                                width: Dimens.fourtyFive,
                                padding: Dimens.edgeInsets10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    Dimens.sixteen,
                                  ),
                                  color: controller.isFilter
                                      ? ColorsValue.maincolor1
                                      : ColorsValue.white,
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    AssetConstants.ic_filter,
                                    colorFilter: ColorFilter.mode(
                                        controller.isFilter
                                            ? ColorsValue.white
                                            : ColorsValue.maincolor1,
                                        BlendMode.srcIn),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Dimens.boxHeight10,
                      Expanded(
                        child: Center(
                          child: controller.getCategoryItemList.isEmpty
                              ? const Center(
                                  child: Text("Data not found.... "),
                                )
                              : ListView.builder(
                                  itemCount:
                                      controller.getCategoryItemList.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: Dimens.edgeInsets0_5_0_5,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: ColorsValue.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(Dimens.eight)),
                                        border: Border.all(
                                          color: ColorsValue.maincolor1,
                                          width: 1.5,
                                        ),
                                      ),
                                      child: ListTile(
                                        leadingAndTrailingTextStyle:
                                            Styles.main60012,
                                        minLeadingWidth: 2,
                                        title: Text(
                                          controller.getCategoryItemList[index]
                                                  .name ??
                                              '',
                                          style: Styles.main60012,
                                        ),
                                        leading: Padding(
                                          padding: Dimens.edgeInsetsTopt3,
                                          child: Text(
                                            controller
                                                    .getCategoryItemList[index]
                                                    .codeInString ??
                                                '',
                                          ),
                                        ),
                                        trailing: InkWell(
                                          onTap: () {
                                            controller.remarkAddItemController
                                                .text = controller
                                                    .getCategoryItemList[index]
                                                    .remark ??
                                                '';
                                            controller.count = controller
                                                .getCategoryItemList[index]
                                                .itemCount;
                                            Get.dialog(AddItemPopupScreen(
                                              selectedItem: controller
                                                  .getCategoryItemList[index],
                                            ));
                                          },
                                          child: Container(
                                            width: Dimens.eighty,
                                            height: Dimens.twentySix,
                                            decoration: BoxDecoration(
                                              color: controller
                                                      .getCategoryItemList[
                                                          index]
                                                      .isAdded
                                                  ? ColorsValue.maincolor1
                                                  : Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                Dimens.six,
                                              ),
                                              border: controller
                                                      .getCategoryItemList[
                                                          index]
                                                      .isAdded
                                                  ? Border.all(
                                                      width: Dimens.zero,
                                                    )
                                                  : Border.all(
                                                      color: ColorsValue
                                                          .maincolor1,
                                                      width: Dimens.one,
                                                    ),
                                            ),
                                            child: controller
                                                    .getCategoryItemList[index]
                                                    .isAdded
                                                ? Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "qty : ${controller.getCategoryItemList[index].isAdded ? controller.getCategoryItemList[index].itemCount : controller.getCategoryItemList[index].itemCount}"
                                                            .toUpperCase(),
                                                        style: Styles.white10,
                                                      ),
                                                      Dimens.boxWidth10,
                                                      SvgPicture.asset(
                                                        AssetConstants.ic_edit,
                                                      ),
                                                    ],
                                                  )
                                                : Center(
                                                    child: Text(
                                                      controller
                                                              .getCategoryItemList[
                                                                  index]
                                                              .isAdded
                                                          ? "Edit"
                                                          : "additem".tr,
                                                      style: Styles.main70010,
                                                    ),
                                                  ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                      Visibility(
                        visible: true,
                        child: SizedBox(
                          width: Get.width,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  ColorsValue.maincolor1),
                              shape: WidgetStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(Dimens.eight),
                                ),
                              ),
                            ),
                            onPressed: () {
                              controller.createKot(
                                tableId: controller.tableId ?? "",
                              );
                              controller.update();
                            },
                            child: Padding(
                              padding: Dimens.edgeInsets0_10_0_10,
                              child: Text(
                                "go_to_order_list".tr.toUpperCase(),
                                style: Styles.offwhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Dimens.boxHeight10
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
