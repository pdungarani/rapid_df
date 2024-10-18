//coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_df/app/app.dart';

/// A chunk of styles used in the application.
/// Will be ignored for test since all are static values and would not change.
abstract class Styles {
  static TextStyle txtBlackColorW70020 = GoogleFonts.outfit(
    color: ColorsValue.txtBlackColor,
    fontSize: Dimens.twenty,
    fontWeight: FontWeight.w700,
  );

  /// Dialog Text
  static TextStyle black50018 = GoogleFonts.outfit(
    color: ColorsValue.blackColor,
    fontSize: Dimens.eighteen,
    fontWeight: FontWeight.w500,
  );

  static TextStyle redColor50014 = GoogleFonts.outfit(
    color: ColorsValue.redColor,
    fontWeight: FontWeight.w500,
    fontSize: Dimens.fourteen,
  );

  static TextStyle black50014 = GoogleFonts.outfit(
    color: ColorsValue.blackColor,
    fontSize: Dimens.fourteen,
    fontWeight: FontWeight.w500,
  );
}
