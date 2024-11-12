import 'package:final_df/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CategoriesItemMobile extends StatelessWidget {
  const CategoriesItemMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(milliseconds: 500);
    return GetBuilder<CategoriesItemController>(
      initState: (state) {
        var controller = Get.find<CategoriesItemController>();
        controller.getAllCategory(search: "");
      },
      builder: (controller) {
        return Scaffold(
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
                              colorFilter: const ColorFilter.mode(
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
                        controller: controller.searchCategoryController,
                        onChanged: (value) {
                          debouncer.run(() {
                            Future.sync(() => controller.getAllCategory(
                                search: value.toString()));
                          });
                        },
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
                                (controller.categoryDatumList ?? [])
                                    .asMap()
                                    .entries
                                    .map(
                                  (e) {
                                    int index = e.key;
                                    return controller.categoryDatumList.isEmpty
                                        ? const Center(
                                            child: Text('Data Not found ...'),
                                          )
                                        : InkWell(
                                            onTap: () {
                                              RouteManagement
                                                  .goToAddItemScreenMobile(
                                                      e.value.id ?? "");
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
                                                  padding: Dimens
                                                      .edgeInsets3_15_3_15,
                                                  child: Text(
                                                    controller
                                                            .categoryDatumList[
                                                                index]
                                                            .name ??
                                                        "${"".toUpperCase()}sdadsadsad",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
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
                                  },
                                ).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
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
