// import 'package:final_df/app/navigators/navigators.dart';
// import 'package:final_df/app/pages/category_screen/category_page.dart';
// import 'package:final_df/app/theme/theme.dart';
// import 'package:final_df/app/utils/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';

// class CategoryScreen extends StatelessWidget {
//   const CategoryScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<CategoryController>(
//       // initState: (state) {
//       //   var controller = Get.find<CategoriesItemController>();
//       //   controller.isParcel = Get.arguments ?? false;
//       //   controller.postCategoryList(search: "");
//       // },
//       builder: (controller) => PopScope(
//         canPop: false,
//         onPopInvoked: controller.internalItemList.isNotEmpty
//             ? (a) {}
//             : (didPop) {
//                 if (!didPop) {
//                   Get.back();
//                 }
//               },
//         child: Scaffold(
//           backgroundColor: ColorsValue.white,
//           body: Stack(
//             children: [
//               Container(
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     fit: BoxFit.fill,
//                     image: AssetImage(AssetConstants.backgroundimage),
//                   ),
//                 ),
//               ),
//               SafeArea(
//                 child: Padding(
//                   padding: Dimens.edgeInsets20_0_20_0,
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           InkWell(
//                             onTap: () {
//                               Get.back();
//                             },
//                             child: SvgPicture.asset(
//                               AssetConstants.backarrowicon,
//                               colorFilter: ColorFilter.mode(
//                                 ColorsValue.blackColor,
//                                 BlendMode.srcIn,
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 "selectcategory".tr.toUpperCase(),
//                                 style: Styles.titlestyle70018,
//                               ),
//                             ),
//                           ),
//                           Dimens.boxWidth20
//                         ],
//                       ),
//                       Dimens.boxHeight10,
//                       TextFormField(
//                         controller: controller.searchCategoryController,
//                         onChanged: (value) {
//                           debouncer.run(() {
//                             Future.sync(() => controller.postCategoryList(
//                                 search: value.toString()));
//                           });
//                         },
//                         decoration: InputDecoration(
//                           contentPadding:
//                               EdgeInsets.symmetric(vertical: Dimens.ten),
//                           prefixIcon: const Icon(Icons.search),
//                           fillColor: ColorsValue.white,
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                             borderRadius: BorderRadius.circular(
//                               Dimens.sixteen,
//                             ),
//                           ),
//                           errorBorder: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                             borderRadius: BorderRadius.circular(
//                               Dimens.sixteen,
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                             borderRadius: BorderRadius.circular(
//                               Dimens.sixteen,
//                             ),
//                           ),
//                           disabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                             borderRadius: BorderRadius.circular(
//                               Dimens.sixteen,
//                             ),
//                           ),
//                           focusColor: ColorsValue.maincolor1,
//                           hoverColor: ColorsValue.maincolor1,
//                           filled: true,
//                           border: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                             borderRadius: BorderRadius.circular(
//                               Dimens.sixteen,
//                             ),
//                           ),
//                           hintText: 'searchhere'.tr,
//                           hintStyle: Styles.grey99940014,
//                         ),
//                       ),
//                       Dimens.boxHeight20,
//                       Expanded(
//                         child: CustomScrollView(
//                           slivers: [
//                             SliverGrid(
//                               gridDelegate:
//                                   SliverGridDelegateWithFixedCrossAxisCount(
//                                 crossAxisCount: 2,
//                                 mainAxisExtent: Dimens.sixty,
//                                 crossAxisSpacing: Dimens.twelve,
//                                 mainAxisSpacing: Dimens.twelve,
//                               ),
//                               delegate: SliverChildListDelegate(
//                                   (controller.categoryDataList)
//                                       .asMap()
//                                       .entries
//                                       .map((e) {
//                                 int index = e.key;
//                                 return false
//                                     ? const Center(
//                                         child: Text('Data Not found ...'),
//                                       )
//                                     : InkWell(
//                                         onTap: () {
//                                           // print(
//                                           //     "========>>>>>>>>>>${controller.categoryDataList[index].id}");
//                                           // RouteManagement.goToAddItemScreen(
//                                           //     controller
//                                           //         .categoryDataList[index].id);
//                                         },
//                                         child: Container(
//                                           decoration: BoxDecoration(
//                                             // color: controller
//                                             //         .colorsAndStylesList[
//                                             //     index %
//                                             //         controller
//                                             //             .colorsAndStylesList
//                                             //             .length]['lightcolr'],
//                                             borderRadius: BorderRadius.all(
//                                               Radius.circular(Dimens.eight),
//                                             ),
//                                             border: Border.all(
//                                               // color: controller
//                                               //         .colorsAndStylesList[
//                                               //     index %
//                                               //         controller
//                                               //             .colorsAndStylesList
//                                               //             .length]['background'],
//                                               width: 2,
//                                             ),
//                                           ),
//                                           child: Center(
//                                             child: Padding(
//                                               padding:
//                                                   Dimens.edgeInsets3_15_3_15,
//                                               child: Text(
//                                                 // controller
//                                                 //         .categoryDataList[index]
//                                                 //         .
//                                                 'name' ??
//                                                     "".toUpperCase() +
//                                                         "sdadsadsad",
//                                                 maxLines: 1,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 // style: controller
//                                                 //         .colorsAndStylesList[
//                                                 //     index %
//                                                 //         controller
//                                                 //             .colorsAndStylesList
//                                                 //             .length]['style'],
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       );
//                               }).toList()),
//                             ),
//                             // SliverPadding(
//                             //   padding: Dimens.edgeInsetsTopt10,
//                             //   sliver: SliverList(
//                             //     delegate: SliverChildListDelegate(
//                             //         (controller.getCategoryData.items ?? [])
//                             //             .asMap()
//                             //             .entries
//                             //             .map((e) {
//                             //       int index = e.key;
//                             //       return controller
//                             //               .getCategoryData.items!.isEmpty
//                             //           ? const SizedBox()
//                             //           : Padding(
//                             //               padding: Dimens.edgeInsets0_5_0_5,
//                             //               child: Container(
//                             //                 decoration: BoxDecoration(
//                             //                   color: ColorsValue.white,
//                             //                   borderRadius: BorderRadius.all(
//                             //                       Radius.circular(
//                             //                           Dimens.eight)),
//                             //                   border: Border.all(
//                             //                     color: ColorsValue.maincolor1,
//                             //                     width: 1.5,
//                             //                   ),
//                             //                 ),
//                             //                 child: ListTile(
//                             //                   leadingAndTrailingTextStyle:
//                             //                       Styles.main60012,
//                             //                   minLeadingWidth: 2,
//                             //                   title: Text(
//                             //                     controller.getCategoryData
//                             //                             .items?[index].name ??
//                             //                         '',
//                             //                     style: Styles.main60012,
//                             //                   ),
//                             //                   leading: Padding(
//                             //                     padding: Dimens.edgeInsetsTopt3,
//                             //                     child: Text(
//                             //                       controller
//                             //                               .getCategoryData
//                             //                               .items?[index]
//                             //                               .codeInString ??
//                             //                           '',
//                             //                     ),
//                             //                   ),
//                             //                   trailing: InkWell(
//                             //                     onTap: () {
//                             //                       controller
//                             //                           .remarkAddItemController
//                             //                           .text = controller
//                             //                               .getCategoryData
//                             //                               .items?[index]
//                             //                               .remark ??
//                             //                           '';
//                             //                       controller.count = controller
//                             //                               .getCategoryData
//                             //                               .items?[index]
//                             //                               .itemCount ??
//                             //                           0;
//                             //                       Get.dialog(AddItemPopupScreen(
//                             //                         selectedItem: controller
//                             //                             .getCategoryData
//                             //                             .items![index],
//                             //                       ));
//                             //                     },
//                             //                     child: Container(
//                             //                       width: Dimens.eighty,
//                             //                       height: Dimens.twentySix,
//                             //                       decoration: BoxDecoration(
//                             //                         color: controller
//                             //                                     .getCategoryData
//                             //                                     .items?[index]
//                             //                                     .isAdded ??
//                             //                                 false
//                             //                             ? ColorsValue.maincolor1
//                             //                             : Colors.transparent,
//                             //                         borderRadius:
//                             //                             BorderRadius.circular(
//                             //                           Dimens.six,
//                             //                         ),
//                             //                         border: controller
//                             //                                     .getCategoryData
//                             //                                     .items?[index]
//                             //                                     .isAdded ??
//                             //                                 false
//                             //                             ? Border.all(
//                             //                                 width: Dimens.zero,
//                             //                               )
//                             //                             : Border.all(
//                             //                                 color: ColorsValue
//                             //                                     .maincolor1,
//                             //                                 width: Dimens.one,
//                             //                               ),
//                             //                       ),
//                             //                       child: controller
//                             //                                   .getCategoryData
//                             //                                   .items?[index]
//                             //                                   .isAdded ??
//                             //                               false
//                             //                           ? Row(
//                             //                               mainAxisAlignment:
//                             //                                   MainAxisAlignment
//                             //                                       .center,
//                             //                               children: [
//                             //                                 Text(
//                             //                                   "qty : ${controller.getCategoryData.items![index].isAdded ? controller.getCategoryData.items![index].itemCount : controller.getCategoryData.items![index].itemCount}"
//                             //                                       .toUpperCase(),
//                             //                                   style: Styles
//                             //                                       .white10,
//                             //                                 ),
//                             //                                 Dimens.boxWidth10,
//                             //                                 SvgPicture.asset(
//                             //                                   AssetConstants
//                             //                                       .ic_edit,
//                             //                                 ),
//                             //                               ],
//                             //                             )
//                             //                           : Center(
//                             //                               child: Text(
//                             //                                 controller
//                             //                                             .getCategoryData
//                             //                                             .items?[
//                             //                                                 index]
//                             //                                             .isAdded ??
//                             //                                         false
//                             //                                     ? "Edit"
//                             //                                     : "additem".tr,
//                             //                                 style: Styles
//                             //                                     .main70010,
//                             //                               ),
//                             //                             ),
//                             //                     ),
//                             //                   ),
//                             //                 ),
//                             //               ),
//                             //             );
//                             //     }).toList()),
//                             //   ),
//                             // ),
//                           ],
//                         ),
//                       ),
//                       Visibility(
//                         visible: false,
//                         child: SizedBox(
//                           width: Get.width,
//                           child: ElevatedButton(
//                             style: ButtonStyle(
//                               backgroundColor: MaterialStateProperty.all(
//                                   ColorsValue.maincolor1),
//                               shape: MaterialStateProperty.all<
//                                   RoundedRectangleBorder>(
//                                 RoundedRectangleBorder(
//                                   borderRadius:
//                                       BorderRadius.circular(Dimens.eight),
//                                 ),
//                               ),
//                             ),
//                             onPressed: () {
//                               controller.update();
//                             },
//                             child: Padding(
//                               padding: Dimens.edgeInsets0_10_0_10,
//                               child: Text(
//                                 "go_to_order_list".tr,
//                                 style: Styles.offwhite,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Dimens.boxHeight10
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
