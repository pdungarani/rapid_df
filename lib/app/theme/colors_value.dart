// coverage:ignore-file
// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

/// A list of custom color used in the application.
///
/// Will be ignored for test since all are static values and would not change.
abstract class ColorsValue {
  static Color primaryColor = const Color(0x20C0E8);
  static Color appColor = const Color(0xFF3E6227);
  static Color whiteColor = const Color(0xFFFFFFFF);
  static Color appBg = const Color(0xFFF6F6F6);
  static Color blackColor = const Color(0xFF000000);
  static Color redColor = const Color(0xFFD80032);
  static Color txtBlackColor = const Color(0xFF1E293B);
}
