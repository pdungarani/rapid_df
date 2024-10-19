import 'package:flutter/widgets.dart';

extension BuildContextExt on BuildContext {
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  double get blockSizeHorizontal => width / 100;

  double get blockSizeVertical => height / 100;

  
}
