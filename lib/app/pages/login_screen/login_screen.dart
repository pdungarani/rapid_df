import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:final_df/app/app.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (context) {
        return Scaffold(
          backgroundColor: ColorsValue.whiteColor,
          body: Center(
            child: Text("Loging Data"),
          ),
        );
      },
    );
  }
}
