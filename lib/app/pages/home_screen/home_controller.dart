import 'package:get/get.dart';
import 'package:final_df/app/app.dart';

class HomeController extends GetxController {
  HomeController(this.homePresenter);

  final HomePresenter homePresenter;

  int selection = 1;
  int isselected = -1;
  int? indexx;
  bool isshift = false;
  bool isjoin = false;
  String selectaddressecommerce = '0';
}
