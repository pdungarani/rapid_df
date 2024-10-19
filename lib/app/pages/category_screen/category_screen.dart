import 'package:final_df/app/navigators/navigators.dart';
import 'package:final_df/app/pages/category_screen/category_page.dart';
import 'package:final_df/app/theme/theme.dart';
import 'package:final_df/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      // initState: (state) {
      //   var controller = Get.find<CategoriesItemController>();
      //   controller.isParcel = Get.arguments ?? false;
      //   controller.postCategoryList(search: "");
      // },
      builder: (controller) => PopScope(
        canPop: false,
        // onPopInvoked: controller.internalItemList.isNotEmpty
        //     ? (a) {}
        //     : (didPop) {
        //         if (!didPop) {
        //           Get.back();
        //         }
        //       },
        child: Scaffold(
          backgroundColor: ColorsValue.white,
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
                              colorFilter: ColorFilter.mode(
                                ColorsValue.blackColor,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "selectcategory".tr.toUpperCase(),
                                style: Styles.titlestyle70018,
                              ),
                            ),
                          ),
                          Dimens.boxWidth20
                        ],
                      ),
                      Dimens.boxHeight10,
                      TextFormField(
                        // controller: controller.searchCategoryController,
                        // onChanged: (value) {
                        //   debouncer.run(() {
                        //     Future.sync(() => controller.postCategoryList(
                        //         search: value.toString()));
                        //   });
                        // },
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: Dimens.ten),
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
                          hintText: 'searchhere'.tr,
                          hintStyle: Styles.grey99940014,
                        ),
                      ),
                      Dimens.boxHeight20,
                      Expanded(
                        child: CustomScrollView(
                          slivers: [
                            SliverGrid(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: Dimens.sixty,
                                crossAxisSpacing: Dimens.twelve,
                                mainAxisSpacing: Dimens.twelve,
                              ),
                              delegate: SliverChildListDelegate(
                                  // (controller.categoryDataList)
                                  [0, 1, 2, 3, 4, 5].asMap().entries.map((e) {
                                int index = e.key;
                                return false
                                    ? const Center(
                                        child: Text('Data Not found ...'),
                                      )
                                    : InkWell(
                                        onTap: () {
                                          // print(
                                          //     "========>>>>>>>>>>${controller.categoryDataList[index].id}");
                                          RouteManagement.goToaddItemScreen();
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: controller
                                                    .colorsAndStylesList[
                                                index %
                                                    controller
                                                        .colorsAndStylesList
                                                        .length]['lightcolr'],
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(Dimens.eight),
                                            ),
                                            border: Border.all(
                                              color: controller
                                                      .colorsAndStylesList[
                                                  index %
                                                      controller
                                                          .colorsAndStylesList
                                                          .length]['background'],
                                              width: 2,
                                            ),
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding:
                                                  Dimens.edgeInsets3_15_3_15,
                                              child: Text(
                                                // controller
                                                //         .categoryDataList[index]
                                                //         .
                                                'name',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: controller
                                                        .colorsAndStylesList[
                                                    index %
                                                        controller
                                                            .colorsAndStylesList
                                                            .length]['style'],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                              }).toList()),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: false,
                        child: SizedBox(
                          width: Get.width,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  ColorsValue.maincolor1),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(Dimens.eight),
                                ),
                              ),
                            ),
                            onPressed: () {
                              controller.update();
                            },
                            child: Padding(
                              padding: Dimens.edgeInsets0_10_0_10,
                              child: Text(
                                "go_to_order_list".tr,
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
        ),
      ),
    );
  }
}
