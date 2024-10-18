//coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_df/app/app.dart';

/// A chunk of styles used in the application.
/// Will be ignored for test since all are static values and would not change.
abstract class Styles {
  static String? fontFamily = globalVariable == 1 ? 'Product-Sans' : 'Avenir';

  static TextStyle hookupHeaderBlackBold30 = GoogleFonts.poppins(
    color: ColorsValue.hookupHeaderBlackColor,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.thirty,
  );

  static TextStyle lightMainColor70018 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.eighteen,
  );

  static TextStyle whiteBold16 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.sixteen,
  );

  static TextStyle hookupHeaderWhiteBold26 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.twentySix,
  );

  static TextStyle hookupHeaderGreyBold20 = GoogleFonts.poppins(
    color: ColorsValue.hookupHeaderGreyColor,
    fontSize: Dimens.twenty,
    fontWeight: FontWeight.w400,
  );

  static TextStyle hookupSubHeaderGreyBold16 = GoogleFonts.poppins(
    color: ColorsValue.hookupSubHeaderGreyColor,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.sixteen,
  );

  static TextStyle hookupSubHeaderGreyBold12 = GoogleFonts.poppins(
    color: ColorsValue.hookupSubHeaderGreyColor,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.twelve,
  );

  static TextStyle hookupSubHeaderGreyBold14 = GoogleFonts.poppins(
    color: ColorsValue.hookupSubHeaderGreyColor,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.fourteen,
  );

  static TextStyle hookupSubHeaderOrangeBold16 = GoogleFonts.poppins(
    color: ColorsValue.hookupOrangeColor,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.sixteen,
  );

  static TextStyle hookupSubHeaderOrangeBold14 = GoogleFonts.poppins(
    color: ColorsValue.hookupOrangeColor,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.fourteen,
  );

  static TextStyle hookupBlackBold16 = GoogleFonts.poppins(
    color: ColorsValue.hookupHeaderBlackColor,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.sixteen,
  );

  static TextStyle hookupBlackBold18 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.eighteen,
  );

  static TextStyle hookupBlackSemiBold18 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.eighteen,
  );

  static TextStyle hookupWhiteBold16 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.sixteen,
  );

  static TextStyle hookupWhiteBold12 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.twelve,
  );

  static TextStyle hookupBlackBold12 = GoogleFonts.poppins(
    color: ColorsValue.hookupSubHeaderGreyColor,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.twelve,
  );

  static TextStyle hookupTermsBlackBold12 = GoogleFonts.poppins(
    color: ColorsValue.hookupHeaderBlackColor,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.twelve,
  );

  static TextStyle hookupBlack12 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.twelve,
  );

  static TextStyle hookupBlack16 = GoogleFonts.poppins(
    color: ColorsValue.hookupHeaderBlackColor,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.sixteen,
  );

  static TextStyle hookupBlack14 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.fourteen,
  );

  static TextStyle hookupBlackBold14 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.fourteen,
  );

  static TextStyle black10 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.ten,
  );

  static TextStyle blackBold10 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.ten,
  );

  static TextStyle grey99940014 = GoogleFonts.poppins(
    color: ColorsValue.grey999999,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.fourteen,
  );

  static TextStyle grey99940018 = GoogleFonts.poppins(
    color: ColorsValue.grey999999,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.eighteen,
  );

  static TextStyle blue11 = GoogleFonts.poppins(
    color: ColorsValue.blueColor,
    fontSize: Dimens.eleven,
  );

  static TextStyle black12 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.twelve,
  );

  static TextStyle blackBold12 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twelve,
  );

  static TextStyle black13 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.thirteen,
  );

  static TextStyle blackBold13 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.thirteen,
  );

  static TextStyle black14 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.fourteen,
  );

  static TextStyle blackBold14 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.fourteen,
  );

  static TextStyle blackBold14w400 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.fourteen,
  );

  static TextStyle blackBold14w500 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: Dimens.fourteen,
  );

  static TextStyle semiBoldBlueDark14 = GoogleFonts.poppins(
    color: ColorsValue.blueDarkColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.w500,
  );

  static TextStyle black15 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.fifteen,
  );

  static TextStyle blackBold15 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.fifteen,
  );

  static TextStyle black16 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.sixteen,
  );

  static TextStyle black16W400 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.sixteen,
    fontWeight: FontWeight.w400,
  );

  static TextStyle black16W500 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.sixteen,
    fontWeight: FontWeight.w500,
  );

  static TextStyle blackBold16 = GoogleFonts.poppins(
    color: const Color(0xFF0A0A0A),
    fontWeight: FontWeight.bold,
    fontSize: Dimens.sixteen,
  );

  static TextStyle blueBold16 = GoogleFonts.poppins(
    color: ColorsValue.blueDarkColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle blackMediumBold16 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.sixteen,
  );

  static TextStyle blue16 = GoogleFonts.poppins(
    color: ColorsValue.blueColor,
    fontSize: Dimens.sixteen,
  );

  static TextStyle blueDark16 = GoogleFonts.poppins(
    color: ColorsValue.blueDarkColor,
    fontSize: Dimens.sixteen,
  );

  static TextStyle blueDark14 = GoogleFonts.poppins(
    color: ColorsValue.blueDarkColor,
    fontSize: Dimens.fourteen,
  );

  static TextStyle black17 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.seventeen,
  );

  static TextStyle blackBold17 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.seventeen,
  );

  static TextStyle black18 = GoogleFonts.poppins(
    color: ColorsValue.hookupHeaderBlackColor,
    fontSize: Dimens.eighteen,
  );

  static TextStyle blackBold18 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.eighteen,
  );

  static TextStyle black20 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.twenty,
  );

  static TextStyle blackBold20 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twenty,
  );
  static TextStyle blackBold22 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twentyTwo,
  );
  static TextStyle blackBold24 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twentyFour,
  );

  static TextStyle black26 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.twentySix,
  );

  static TextStyle blackBold26 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twentySix,
  );

  static TextStyle blackBold30 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.thirty,
  );

  static TextStyle blackBold34 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.thirtyFour,
  );

  static TextStyle white8 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.eight,
  );

  static TextStyle white10 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.ten,
  );

  static TextStyle whiteBold10 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.ten,
  );

  static TextStyle white11 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.eleven,
  );

  static TextStyle whiteBold11 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.eleven,
  );

  static TextStyle white12 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.twelve,
  );

  static TextStyle whiteBold12 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twelve,
  );

  static TextStyle whiteBold12w600 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.twelve,
  );

  static TextStyle white13 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.thirteen,
  );

  static TextStyle whiteBold13 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.thirteen,
  );

  static TextStyle white13Underlined = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    decoration: TextDecoration.underline,
    fontSize: Dimens.thirteen,
  );

  static TextStyle white14 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.fourteen,
  );

  static TextStyle whitetab14 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Get.width * 0.04,
    fontWeight: FontWeight.bold,
  );
  static TextStyle whitetab70014 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Get.width * 0.03,
    fontWeight: FontWeight.bold,
  );

  static TextStyle maintab14 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.bold,
    fontSize: Get.width * 0.03,
  );

  static TextStyle whiteBold14 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.fourteen,
  );

  static TextStyle white15 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.fifteen,
  );

  static TextStyle whiteBold15 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.fifteen,
  );

  static TextStyle white16 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.sixteen,
  );

  static TextStyle whiteColor16 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.sixteen,
  );

  static TextStyle whiteColor16w400 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.w400,
    fontSize: Dimens.sixteen,
  );

  static TextStyle whitecolor16 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.sixteen,
  );

  static TextStyle white17 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.seventeen,
  );

  static TextStyle whiteBold17 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.seventeen,
  );

  static TextStyle white18 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.eighteen,
  );

  static TextStyle whiteBold18 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.eighteen,
  );

  static TextStyle white20 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.twenty,
  );

  static TextStyle whiteBold20 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twenty,
  );

  static TextStyle white22 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.twentyTwo,
  );

  static TextStyle whiteBold22 = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    color: ColorsValue.whiteColor,
    fontSize: Dimens.twentyTwo,
  );

  static TextStyle white23 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.twentyThree,
  );

  static TextStyle whiteBold23 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twentyThree,
  );

  static TextStyle white24 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.twentyFour,
  );

  static TextStyle whiteBold24 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twentyFour,
  );

  static TextStyle whiteBold25 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twentyFour,
  );

  static TextStyle whiteBold26 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twentySix,
  );

  static TextStyle whiteBold16Lato = GoogleFonts.lato(
    fontWeight: FontWeight.w600,
    color: ColorsValue.whiteColor,
    fontSize: Dimens.sixteen,
  );

  static TextStyle whiteBold35Oswald = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    color: ColorsValue.whiteColor,
    fontSize: Dimens.thirtyFive,
  );

  static TextStyle white30 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.thirty,
  );

  static TextStyle whiteBold30 = GoogleFonts.poppins(
    color: ColorsValue.whiteColor,
    fontSize: Dimens.thirty,
    fontWeight: FontWeight.bold,
  );

  static TextStyle primary10 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontSize: Dimens.ten,
  );

  static TextStyle primaryBold10 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.ten,
  );

  static TextStyle primary11 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontSize: Dimens.eleven,
  );

  static TextStyle primaryBold11 = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    color: ColorsValue.primaryColor,
    fontSize: Dimens.eleven,
  );

  static TextStyle primary12 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontSize: Dimens.twelve,
  );

  static TextStyle primaryBold12 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twelve,
  );

  static TextStyle primary12Underlinded = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    decoration: TextDecoration.underline,
    fontSize: Dimens.twelve,
  );

  static TextStyle primary13 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontSize: Dimens.thirteen,
  );

  static TextStyle primaryBold13 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.thirteen,
  );

  static TextStyle primary14 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontSize: Dimens.fourteen,
  );

  static TextStyle primary14Underline = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontSize: Dimens.fourteen,
    decoration: TextDecoration.underline,
  );

  static TextStyle primaryBold14 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.fourteen,
  );

  static TextStyle primary15 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontSize: Dimens.fifteen,
  );

  static TextStyle primaryBold15 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.fifteen,
  );

  static TextStyle primary15Underlined = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    decoration: TextDecoration.underline,
    fontSize: Dimens.fifteen,
  );

  static TextStyle primary16 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontSize: Dimens.sixteen,
  );

  static TextStyle primaryBold16 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.sixteen,
  );

  static TextStyle primary18 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontSize: Dimens.eighteen,
  );

  static TextStyle primary20 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontSize: Dimens.twenty,
  );

  static TextStyle primaryBold20 = GoogleFonts.poppins(
    color: ColorsValue.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twenty,
  );

  static TextStyle grey10 = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontSize: Dimens.ten,
  );

  static TextStyle greyBold10 = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.ten,
  );

  static TextStyle grey11 = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontSize: Dimens.eleven,
  );

  static TextStyle grey12 = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontSize: Dimens.twelve,
  );

  static TextStyle mediumGrey12 = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontWeight: FontWeight.w500,
    fontSize: Dimens.twelve,
  );

  static TextStyle greyBold12 = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.twelve,
  );

  static TextStyle grey12LineThrough = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontSize: Dimens.twelve,
    decoration: TextDecoration.lineThrough,
  );

  static TextStyle grey13 = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontSize: Dimens.thirteen,
  );

  static TextStyle grey13LineThrough = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontSize: Dimens.thirteen,
    decoration: TextDecoration.lineThrough,
  );

  static TextStyle grey14 = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontSize: Dimens.fourteen,
  );

  static TextStyle grey15 = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontSize: Dimens.fifteen,
  );

  static TextStyle grey16 = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontSize: Dimens.sixteen,
  );

  static TextStyle grey18 = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontSize: Dimens.eighteen,
  );

  static TextStyle grey20 = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontSize: Dimens.twenty,
  );

  static TextStyle greyLight15 = GoogleFonts.poppins(
    color: ColorsValue.greyColor.withOpacity(Dimens.pointFiveStatic),
    fontSize: Dimens.fifteen,
  );

  static TextStyle greyLight12 = GoogleFonts.poppins(
    color: ColorsValue.greyColor.withOpacity(Dimens.pointFiveStatic),
    fontSize: Dimens.twelve,
  );

  static TextStyle greyMediumLight12 = GoogleFonts.poppins(
    color: ColorsValue.lightGreyTextColor,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.w400,
  );

  static TextStyle greyLight14 = GoogleFonts.poppins(
    color: ColorsValue.lightGreyTextColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.w400,
  );

  static TextStyle greyLight16 = GoogleFonts.poppins(
    color: ColorsValue.greyColor,
    fontSize: Dimens.fifteen,
  );

  static TextStyle red12 = GoogleFonts.poppins(
    color: ColorsValue.redColor,
    fontSize: Dimens.twelve,
  );
  static TextStyle redtab14 = GoogleFonts.poppins(
    color: ColorsValue.redColor,
    fontSize: Dimens.fourteen,
  );

  static TextStyle redBold12 = GoogleFonts.poppins(
    color: ColorsValue.redColor,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.bold,
  );

  static TextStyle red15 = GoogleFonts.poppins(
    color: ColorsValue.redColor,
    fontSize: Dimens.fifteen,
  );

  /// non common styles
  static TextStyle blackMedium16 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.sixteen,
    fontWeight: FontWeight.w500,
  );

  static TextStyle heavyGrey13 = GoogleFonts.poppins(
    color: ColorsValue.heavyGreyColor,
    fontSize: Dimens.thirteen,
  );

  static TextStyle redNormal14 = GoogleFonts.poppins(
    color: ColorsValue.redColor,
    fontWeight: FontWeight.normal,
    fontSize: Dimens.fourteen,
  );

  static TextStyle blackNormal10 = GoogleFonts.poppins(
    color: ColorsValue.redColor,
    fontWeight: FontWeight.normal,
    fontSize: Dimens.ten,
  );

  static TextStyle greyNormal10 = GoogleFonts.poppins(
    color: ColorsValue.redColor,
    fontWeight: FontWeight.normal,
    fontSize: Dimens.ten,
  );

  static TextStyle blackNormal14 = GoogleFonts.poppins(
    color: ColorsValue.redColor,
    fontWeight: FontWeight.normal,
    fontSize: Dimens.fourteen,
  );

  static TextStyle blackNormal12 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.normal,
    fontSize: Dimens.twelve,
  );

  static TextStyle blackMedium12 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w500,
    fontSize: Dimens.twelve,
  );

  static TextStyle blackNormal15 = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: Dimens.fifteen,
  );

  static TextStyle blackMedium14 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.w500,
  );

  static TextStyle pinkBold16w700 = GoogleFonts.poppins(
    color: ColorsValue.pinkColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.w700,
  );

  static TextStyle pinkBold12w400 = GoogleFonts.poppins(
    color: ColorsValue.pinkColor,
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.w400,
  );

  static TextStyle whiteLight12 = GoogleFonts.poppins(
    fontSize: Dimens.twelve,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );

  static TextStyle black19 = GoogleFonts.poppins(
    fontSize: Dimens.nineteen,
    color: ColorsValue.blackColor,
  );

  static TextStyle text16blackProductSansRegular = GoogleFonts.poppins(
    fontWeight: FontWeight.normal,
    color: ColorsValue.blackColor,
    fontSize: Dimens.sixteen,
  );

  static TextStyle text16blackProductSansBold = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    color: ColorsValue.blackColor,
    fontSize: Dimens.sixteen,
  );

  static TextStyle bold14 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static TextStyle bold18 = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
  static TextStyle boldtab18 = GoogleFonts.poppins(
    fontSize: Dimens.eighteen,
    fontWeight: FontWeight.w700,
  );

  static TextStyle redTxt10 = GoogleFonts.poppins(
      fontSize: 10, fontWeight: FontWeight.w700, color: ColorsValue.redColor);

  static TextStyle lightgrey12700 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: ColorsValue.lightGrey,
  );

  static TextStyle lightgrey16700 = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: ColorsValue.lightGrey,
  );

  static TextStyle lightgreytab16700 = GoogleFonts.poppins(
    fontSize: Dimens.sixteen,
    fontWeight: FontWeight.w700,
    color: ColorsValue.lightGrey,
  );

  static TextStyle lightgreytab18700 = GoogleFonts.poppins(
    fontSize: Dimens.eighteen,
    fontWeight: FontWeight.w700,
    color: ColorsValue.lightGrey,
  );

  static TextStyle main60032 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.thirtyTwo,
  );

  static TextStyle main60014 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  static TextStyle maintab60014 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w600,

    fontSize: Dimens.sixteen, //14
  );

  static TextStyle whitetab60014 = GoogleFonts.poppins(
    color: ColorsValue.white,
    fontWeight: FontWeight.w600,
    fontSize: Get.width * 0.03, //14
  );

  static TextStyle main60018 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.eighteen,
  );

  static TextStyle main60020 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.twenty,
  );

  static TextStyle main60040 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.fourty,
  );

  static TextStyle maintab60018 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w600,

    fontSize: Get.width * 0.03, //18
  );

  static TextStyle main70014 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.fourteen,
  );

  static TextStyle main70010 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w800,
    fontSize: 10,
  );

  static TextStyle main70016 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.sixteen,
  );

  static TextStyle main70020 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.twenty,
  );

  static TextStyle main70018 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.eighteen,
  );
  static TextStyle maintab70018 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w700,
    fontSize: Get.width * 0.03, //20,
  );

  static TextStyle lightmaincolor70018 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w700,
    fontSize: Get.width * 0.05, //20,
  );

  static TextStyle titlestyle70018 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.eighteen,
  );

  static TextStyle titlestyle70024 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.twentyFour,
  );

  static TextStyle titlestyle70030 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.thirty,
  );

  static TextStyle titlestyletab70020 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w800,
    fontSize: Get.width * 0.04,
  );

  static TextStyle greytext = GoogleFonts.poppins(
    color: ColorsValue.greytext,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  static TextStyle greytext16 = GoogleFonts.poppins(
    color: ColorsValue.greytext,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static TextStyle greyText18 = GoogleFonts.poppins(
    color: ColorsValue.greytext,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.eighteen,
  );

  static TextStyle greyText20600 = GoogleFonts.poppins(
    color: ColorsValue.grey9CA3AF,
    fontWeight: FontWeight.w600,
    fontSize: Get.width * 0.02, //16
  );

  static TextStyle lightwhitetext = GoogleFonts.poppins(
    color: ColorsValue.lightwhitetext,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  static TextStyle lightwhitetext16 = GoogleFonts.poppins(
    color: ColorsValue.lightwhitetext,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.sixteen,
  );

  static TextStyle lightwhitetext20 = GoogleFonts.poppins(
    color: ColorsValue.lightwhitetext,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.twenty,
  );

  static TextStyle lightwhitetext18 = GoogleFonts.poppins(
    color: ColorsValue.lightwhitetext,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.eighteen,
  );

  static TextStyle mainopacity60014 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1.withOpacity(0.4),
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  static TextStyle mainopacitytab60014 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1.withOpacity(0.4),
    fontWeight: FontWeight.w600,
    fontSize: Get.width * 0.03,
  );

  static TextStyle mainopacity60018 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1.withOpacity(0.4),
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  static TextStyle mainopacitytab60018 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1.withOpacity(0.4),
    fontWeight: FontWeight.w600,

    fontSize: Get.width * 0.03, //18
  );

  static TextStyle main60012 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  static TextStyle mainLight70018 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1.withOpacity(0.4),
    fontWeight: FontWeight.w700,
    fontSize: Dimens.eighteen,
  );

  static TextStyle main60016 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.sixteen,
  );

  static TextStyle maintab60016 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w600,

    fontSize: Get.width * 0.03, //16
  );

  static TextStyle white60012 = GoogleFonts.poppins(
    color: ColorsValue.white,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  static TextStyle whitetab60012 = GoogleFonts.poppins(
    color: ColorsValue.white,
    fontWeight: FontWeight.w600,
    fontSize: Get.width * 0.03,
  );

  static TextStyle white60016 = GoogleFonts.poppins(
    color: ColorsValue.white,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static TextStyle whitetab60016 = GoogleFonts.poppins(
    color: ColorsValue.white,
    fontWeight: FontWeight.w600,

    fontSize: Get.width * 0.03, //16
  );

  static TextStyle white70018 = GoogleFonts.poppins(
    color: ColorsValue.white,
    fontWeight: FontWeight.w700,
    fontSize: Dimens.eighteen,
  );

  static TextStyle whitetab70018 = GoogleFonts.poppins(
    color: ColorsValue.white,
    fontWeight: FontWeight.w700,
    fontSize: Get.width * 0.03,
  );

  static TextStyle titlestyle60010 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w600,
    fontSize: 10,
  );

  static TextStyle titlestyle70014 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  static TextStyle secondrytext70014 = GoogleFonts.poppins(
    color: ColorsValue.secondorytext,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  // static TextStyle main60012 = GoogleFonts.poppins(
  //   color: ColorsValue.secondorytext,
  //   fontWeight: FontWeight.w600,
  //   fontSize: 12,
  //
  // );

  static TextStyle titlestyle90016 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w900,
    fontSize: 16,
  );

  static TextStyle titlestyletab90016 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w600,
    fontSize: Get.width * 0.030,
  );

  static TextStyle orangetext = GoogleFonts.poppins(
    color: ColorsValue.orange,
    fontWeight: FontWeight.w800,
    fontSize: Get.width * 0.03, //16,
  );

  static TextStyle orange60018 = GoogleFonts.poppins(
    color: ColorsValue.orange,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.eighteen,
  );

  static TextStyle orange60012 = GoogleFonts.poppins(
    color: ColorsValue.orange,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.twelve,
  );

  static TextStyle greentext = GoogleFonts.poppins(
    color: ColorsValue.green,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  static TextStyle greentext80016 = GoogleFonts.poppins(
    color: ColorsValue.green,
    fontWeight: FontWeight.w800,
    fontSize: Get.width * 0.03, //16,
  );

  static TextStyle green60018 = GoogleFonts.poppins(
    color: ColorsValue.green,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.eighteen,
  );

  static TextStyle green60012 = GoogleFonts.poppins(
    color: ColorsValue.green,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.twelve,
  );

  static TextStyle greentext90016 = GoogleFonts.poppins(
    color: Color(0xff008000),
    fontWeight: FontWeight.w900,
    fontSize: Get.width * 0.03, //16,
  );

  static TextStyle skytext = GoogleFonts.poppins(
    color: ColorsValue.sky,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  static TextStyle skytext80016 = GoogleFonts.poppins(
    color: ColorsValue.sky,
    fontWeight: FontWeight.w800,
    fontSize: Get.width * 0.03, //16,
  );

  static TextStyle sky60018 = GoogleFonts.poppins(
    color: ColorsValue.sky,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.eighteen, //16,
  );

  static TextStyle sky60012 = GoogleFonts.poppins(
    color: ColorsValue.sky,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.twelve, //16,
  );

  static TextStyle bluetext = GoogleFonts.poppins(
    color: ColorsValue.blue,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  static TextStyle bluetext80016 = GoogleFonts.poppins(
    color: ColorsValue.blue,
    fontWeight: FontWeight.w800,
    fontSize: Get.width * 0.03, //16,
  );

  static TextStyle blue60012 = GoogleFonts.poppins(
      color: ColorsValue.blue,
      fontWeight: FontWeight.w600,
      fontSize: Dimens.twelve);

  static TextStyle blue60018 = GoogleFonts.poppins(
      color: ColorsValue.blue,
      fontWeight: FontWeight.w600,
      fontSize: Dimens.eighteen);

  static TextStyle purpultext = GoogleFonts.poppins(
    color: ColorsValue.purplue,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  static TextStyle purpultext80016 = GoogleFonts.poppins(
    color: ColorsValue.purplue,
    fontWeight: FontWeight.w800,
    fontSize: Get.width * 0.03, //16,
  );

  static TextStyle purpul60018 = GoogleFonts.poppins(
    color: ColorsValue.purplue,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.eighteen,
  );

  static TextStyle purpul60012 = GoogleFonts.poppins(
    color: ColorsValue.purplue,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.twelve,
  );

  static TextStyle redtext = GoogleFonts.poppins(
    color: ColorsValue.red,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  static TextStyle redtext80016 = GoogleFonts.poppins(
    color: ColorsValue.red,
    fontWeight: FontWeight.w800,
    fontSize: Get.width * 0.03, //16,
  );

  static TextStyle red60018 = GoogleFonts.poppins(
    color: ColorsValue.red,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.eighteen,
  );

  static TextStyle red60012 = GoogleFonts.poppins(
    color: ColorsValue.red,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.twelve,
  );

  static TextStyle offwhite = GoogleFonts.poppins(
    color: ColorsValue.offwhite,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  static TextStyle offwhitetab = GoogleFonts.poppins(
    color: ColorsValue.offwhite,
    fontWeight: FontWeight.w600,
    fontSize: Get.width * 0.03,
  );

  static TextStyle offwhite70016 = GoogleFonts.poppins(
    color: ColorsValue.offwhite,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );

  static TextStyle offwhitetab70016 = GoogleFonts.poppins(
    color: ColorsValue.offwhite,
    fontWeight: FontWeight.w700,
    fontSize: Get.width * 0.03, //16
  );

  static TextStyle underlinetitlestyle70018 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    decoration: TextDecoration.none,
  );

  static TextStyle underlinetitlestyletab70018 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w700,
    fontSize: Get.width * 0.04,
    decoration: TextDecoration.none,
  );

  static TextStyle underlinetitlestyle70020 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    decoration: TextDecoration.none,
  );

  static TextStyle underlinetitlestyletab70020 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w900,
    fontSize: Get.width * 0.05,
    decoration: TextDecoration.none,
  );

  static TextStyle undermain60016 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    decoration: TextDecoration.none,
  );

  static TextStyle undermain60014 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    decoration: TextDecoration.none,
  );

  static TextStyle white60014 = GoogleFonts.poppins(
    color: ColorsValue.white,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  static TextStyle whiteTab70020 = GoogleFonts.poppins(
    color: ColorsValue.white,
    fontWeight: FontWeight.w700,

    fontSize: Get.width * 0.03, //20,
  );

  static TextStyle whiteTab60020 = GoogleFonts.poppins(
    color: ColorsValue.white,
    fontWeight: FontWeight.w600,

    fontSize: Get.width * 0.03, //20,
  );

  static TextStyle titlestyle80020 = GoogleFonts.poppins(
    color: ColorsValue.lightmaincolor,
    fontWeight: FontWeight.w800,
    fontSize: 20,
  );

  static TextStyle main12 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontSize: Dimens.twelve,
  );

  static TextStyle main90018 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w900,
    fontSize: 18,
  );
  static TextStyle maintab90018 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w900,
    fontSize: Get.width * 0.03,
  );

  static TextStyle offwhite18 = GoogleFonts.poppins(
    color: ColorsValue.offwhite,
    fontWeight: FontWeight.w800,
    fontSize: 18,
  );
  static TextStyle offwhitetab18 = GoogleFonts.poppins(
    color: ColorsValue.offwhite,
    fontWeight: FontWeight.w800,
    fontSize: Get.width * 0.03,
  );

  static TextStyle grey6B7280700 = GoogleFonts.poppins(
    color: ColorsValue.grey6B7280,
    fontWeight: FontWeight.w700,
    fontSize: Get.width * 0.03,
  );

  static TextStyle mainColor50012 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w500,
    fontSize: Dimens.twelve,
  );

  static TextStyle lightMainColor60012 = GoogleFonts.poppins(
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.w600,
    color: ColorsValue.lightmaincolor,
  );
  static TextStyle lgrey9CA3AF60010 = GoogleFonts.poppins(
    fontSize: Dimens.ten,
    fontWeight: FontWeight.w600,
    color: ColorsValue.grey9CA3AF,
  );

  static TextStyle main60010 = GoogleFonts.poppins(
    fontSize: Dimens.ten,
    fontWeight: FontWeight.w600,
    color: ColorsValue.maincolor1,
  );
  static TextStyle grey9CA3AF60012 = GoogleFonts.poppins(
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.w600,
    color: ColorsValue.grey9CA3AF,
  );

  static TextStyle grey9CA3AF60016 = GoogleFonts.poppins(
    fontSize: Dimens.sixteen,
    fontWeight: FontWeight.w600,
    color: ColorsValue.grey9CA3AF,
  );

  static TextStyle orangeColor60012 = GoogleFonts.poppins(
    fontSize: Dimens.twelve,
    fontWeight: FontWeight.w600,
    color: ColorsValue.orangeColor,
  );

  static TextStyle redColor70016 = GoogleFonts.poppins(
    fontSize: Dimens.sixteen,
    fontWeight: FontWeight.w600,
    color: ColorsValue.redColor,
  );

  static TextStyle black60016 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.sixteen,
  );

  static TextStyle redColorTab60016 = GoogleFonts.poppins(
    color: ColorsValue.redColor,
    fontWeight: FontWeight.w600,
    fontSize: Get.width * 0.03, //16
  );

  static TextStyle mainTab60018 = GoogleFonts.poppins(
    color: ColorsValue.maincolor1,
    fontWeight: FontWeight.w600,

    fontSize: Get.width * 0.06, //18
  );

  static TextStyle black60018 = GoogleFonts.poppins(
    color: ColorsValue.blackColor,
    fontWeight: FontWeight.w600,
    fontSize: Dimens.eighteen,
  );
}
