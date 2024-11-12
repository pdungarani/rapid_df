import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app.dart';

class CategoriesItemScreen extends StatefulWidget {
  const CategoriesItemScreen({super.key});

  @override
  State<CategoriesItemScreen> createState() => _CategoriesItemScreenState();
}

class _CategoriesItemScreenState extends State<CategoriesItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
    // return context.isTablet ? CategoriesItemTab() : CategoriesItemMobile();
  }
}
