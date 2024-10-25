import 'package:final_df/app/app.dart';
import 'package:final_df/app/theme/constan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemController>(initState: (state) {
      final controller = Get.find<ItemController>();
      controller.data = Get.arguments;
      controller.getAllKots(tableId: controller.data?.id ?? '');
    }, builder: (controller) {
      return Scaffold(
        backgroundColor: ColorsValue.white,
        appBar: AppBar(
          titleTextStyle: context.theme.textTheme.bodyLarge!.copyWith(
            color: ColorsValue.white,
            fontWeight: FontWeight.w700,
            fontSize: Dimens.eighteen,
          ),
          title: Text(
            "Table No: ${controller.data?.tNumberInString ?? ''}".toUpperCase(),
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
            child: !context.isTablet
                ? FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        Dimens.sixty,
                      ),
                    ),
                    backgroundColor: ColorsValue.maincolor1,
                    onPressed: () {
                      RouteManagement.goToCategoryScreen(
                          tableId: controller.data?.id ?? '');
                    },
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
                      child: controller.kotsData.isNotEmpty
                          ? ListView.builder(
                              itemCount: controller.kotsData.length,
                              itemBuilder: ((context, index) {
                                var item = controller.kotsData[index];
                                return InkWell(
                                  onTap: () {
                                    RouteManagement.goToItemListScreen(
                                      kotId: item.id ?? '',
                                      tableId: controller.data?.id ?? '',
                                    );
                                  },
                                  child: Padding(
                                    padding: Dimens.edgeInsets0_10_0_10,
                                    child: Container(
                                      padding: Dimens.edgeInsets20_0_20_0,
                                      height: Get.width * .14,
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
                                          Flexible(
                                            child: Text(
                                              "KOT: ${item.kotNo}",
                                              maxLines: 1,
                                              softWrap: true,
                                              overflow: TextOverflow.ellipsis,
                                              style: context
                                                  .theme.textTheme.labelLarge!
                                                  .copyWith(
                                                fontSize:
                                                    context.blockSizeVertical *
                                                        1.7,
                                              ),
                                            ),
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
                      visible: true,
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
                                onPressed: () {},
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
