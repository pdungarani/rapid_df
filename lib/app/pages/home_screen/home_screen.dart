import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:final_df/app/pages/pages.dart';
import 'package:final_df/app/theme/colors_value.dart';
import 'package:final_df/app/theme/dimens.dart';
import 'package:final_df/app/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        backgroundColor: ColorsValue.blackColor,
        appBar: AppBar(
          backgroundColor: ColorsValue.blackColor,
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Text(
            "${'hi'.tr}Harsh Ramani",
            // style: Styles.txtBlackColorW70020,
          ),
          actions: [
            Padding(
              padding: Dimens.edgeInsetsRight10,
              child: InkWell(
                child: SvgPicture.asset(
                  AssetConstants.applogo,
                ),
              ),
            ),
            Padding(
              padding: Dimens.edgeInsetsRight10,
              child: InkWell(
                child: SvgPicture.asset(
                  AssetConstants.applogo,
                ),
              ),
            ),
            Padding(
              padding: Dimens.edgeInsetsRight10,
              child: InkWell(
                child: SvgPicture.asset(
                  AssetConstants.applogo,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          padding: Dimens.edgeInsets20,
          children: [
            SizedBox(
              height: 250,
              child: PageView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset("images/assets/Baneer (1).png"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
