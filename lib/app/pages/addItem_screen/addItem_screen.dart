import 'package:final_df/app/pages/pages.dart';
import 'package:final_df/app/theme/theme.dart';
import 'package:final_df/app/utils/utils.dart';
import 'package:final_df/domain/models/create_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AddItemScreen extends StatelessWidget {
  const AddItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddItemController>(
      initState: (state) {
        final controller = Get.find<AddItemController>();
        controller.getOneCategory(
          search: '',
          categoryId: Get.arguments[0],
        );
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
                              colorFilter: const ColorFilter.mode(
                                  ColorsValue.blackColor, BlendMode.srcIn),
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
                                  backgroundColor: ColorsValue.whiteColor,
                                  builder: (context) {
                                    return StatefulBuilder(
                                      builder: (context, setState) {
                                        final categoryController =
                                            Get.find<CategoryController>();
                                        return Container(
                                          width: double.infinity,
                                          padding: Dimens.edgeInsets20,
                                          decoration: BoxDecoration(
                                            color: ColorsValue.whiteColor,
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
                                                    color:
                                                        ColorsValue.greyLight,
                                                    width: Dimens.one,
                                                  ),
                                                ),
                                                child: DropdownButton(
                                                  value: controller
                                                      .selectedCategory,
                                                  onChanged: (newValue) {
                                                    // controller
                                                    //         .selectedCategory =
                                                    //     newValue!;
                                                    setState(() {});
                                                  },
                                                  items: categoryController
                                                      .categoryList
                                                      .map(
                                                    (location) {
                                                      return DropdownMenuItem(
                                                        value: location,
                                                        child: Text(
                                                          location.name ?? '',
                                                          style:
                                                              Styles.main60012,
                                                        ),
                                                      );
                                                    },
                                                  ).toList(),
                                                  // DropdownButton<String>(
                                                  //   underline: Container(),
                                                  //   hint: Text(
                                                  //       'select_category'.tr,
                                                  //       style: Styles.bold14),
                                                  //   padding: EdgeInsets.only(
                                                  //     left: Dimens.ten,
                                                  //     right: Dimens.ten,
                                                  //   ),
                                                  //   isExpanded: true,
                                                  //   isDense: false,
                                                  //   icon: SvgPicture.asset(
                                                  //       AssetConstants
                                                  //           .ic_down_arrow),
                                                  //   value: controller
                                                  //       .selectedCategory,
                                                  //   items:
                                                  //       ['1', '2', '3', '4', '5']
                                                  //           .map(
                                                  //             (value) =>
                                                  //                 DropdownMenuItem(
                                                  //               value: value,
                                                  //               child: Text(
                                                  //                 value,
                                                  //                 style: Styles
                                                  //                     .main60012,
                                                  //               ),
                                                  //             ),
                                                  //           )
                                                  //           .toList(),
                                                  //   onChanged: (newValue) {
                                                  //     controller
                                                  //             .selectedCategory =
                                                  //         newValue!;
                                                  //     setState(() {});
                                                  //   },
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
                                                        controller.isFilter =
                                                            false;
                                                        controller.update();
                                                        Get.back();
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
                                                                  .blackColor),
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
                                                        controller.isFilter =
                                                            true;
                                                        Get.back();
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
                                              ),
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
                                      BlendMode.srcIn,
                                    ),
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
                          child: ListView.builder(
                            itemCount: controller.getCategoryItemList.length,
                            itemBuilder: (context, index) {
                              final categoryItem =
                                  controller.getCategoryItemList[index];
                              return Padding(
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
                                      categoryItem.name,
                                      // 'Test ${index + 1}',
                                      style: Styles.main60012,
                                    ),
                                    leading: Padding(
                                      padding: Dimens.edgeInsetsTopt3,
                                      child: Text((index + 1).toString()),
                                    ),
                                    trailing: InkWell(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return StatefulBuilder(
                                              builder: (context, setState) {
                                                setState(() {});
                                                return Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Material(
                                                      color: Colors.transparent,
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
                                                                Dimens.sixteen,
                                                              ),
                                                            ),
                                                            color: ColorsValue
                                                                .white,
                                                          ),
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
                                                                      onTap: categoryItem.itemCounter >
                                                                              0
                                                                          ? () {
                                                                              categoryItem.itemCounter--;
                                                                              setState(() {});
                                                                            }
                                                                          : () {},
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            Dimens.thirty,
                                                                        width: Dimens
                                                                            .thirty,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              ColorsValue.whitee,
                                                                          borderRadius:
                                                                              BorderRadius.all(
                                                                            Radius.circular(Dimens.six),
                                                                          ),
                                                                          border:
                                                                              Border.all(color: ColorsValue.maincolor1),
                                                                        ),
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
                                                                    Text(categoryItem.itemCounter <
                                                                            9
                                                                        ? "0${categoryItem.itemCounter.toString()}"
                                                                        : categoryItem
                                                                            .itemCounter
                                                                            .toString()),
                                                                    Dimens
                                                                        .boxWidth10,
                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        categoryItem
                                                                            .itemCounter++;

                                                                        setState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            Dimens.thirty,
                                                                        width: Dimens
                                                                            .thirty,
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
                                                                      categoryItem
                                                                          .remarkTextEditingController,
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
                                                                            backgroundColor:
                                                                                MaterialStateProperty.all<Color>(ColorsValue.whitetext),
                                                                            shape:
                                                                                MaterialStateProperty.all<RoundedRectangleBorder>(
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
                                                                            Get.back();
                                                                          },
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                Dimens.edgeInsets0_12_0_12,
                                                                            child:
                                                                                Text("cancle".tr.toUpperCase(), style: Styles.main60014),
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
                                                                            backgroundColor:
                                                                                MaterialStateProperty.all<Color>(ColorsValue.maincolor1),
                                                                            shape:
                                                                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                                                              RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.all(
                                                                                  Radius.circular(Dimens.eight),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            controller.update();
                                                                            Get.back();
                                                                          },
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                Dimens.edgeInsets0_12_0_12,
                                                                            child:
                                                                                Text(
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
                                              },
                                            );
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: Dimens.eighty,
                                        height: Dimens.twentySix,
                                        decoration: BoxDecoration(
                                          color: ColorsValue.maincolor1,
                                          borderRadius: BorderRadius.circular(
                                            Dimens.six,
                                          ),
                                          border: Border.all(
                                            width: Dimens.zero,
                                          ),
                                        ),
                                        child: categoryItem.itemCounter > 0
                                            ? Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "qty : ${categoryItem.itemCounter}"
                                                        .toUpperCase(),
                                                    style: Styles.white10,
                                                  ),
                                                  Dimens.boxWidth10,
                                                  SvgPicture.asset(
                                                    AssetConstants.ic_edit,
                                                  ),
                                                ],
                                              )
                                            : Container(
                                                color: ColorsValue
                                                    .blackColorWithOpacity59,
                                                child: Center(
                                                  child: Text(
                                                    categoryItem.itemCounter > 0
                                                        ? "Edit"
                                                        : "addItem",
                                                    style: Styles.main70010
                                                        .copyWith(
                                                            color: ColorsValue
                                                                .white),
                                                  ),
                                                ),
                                              ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
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
                                ColorsValue.maincolor1,
                              ),
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
                                tableId: Get.arguments[1],
                                items: controller.getCategoryItemList
                                    .map(
                                      (e) => Item(
                                        itemId: e.id,
                                        quantity: e.itemCounter,
                                        remark: e.remarkTextEditingController,
                                      ),
                                    )
                                    .toList(),
                              );
                            },
                            child: Padding(
                              padding: Dimens.edgeInsets0_10_0_10,
                              child: Text(
                                "Save".toUpperCase(),
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
