import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) => Scaffold(
        backgroundColor: ColorsValue.whiteColor,
        body: Center(
          child: Image.asset(
            AssetConstants.splashScreen,
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
            width: double.maxFinite,
          ),
        ),
      ),
    );
  }
}
