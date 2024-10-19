import 'package:final_df/app/pages/profile_screen/profile_page.dart';
import 'package:final_df/domain/models/profile_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  ProfileController(this.profilePresenter);

  final PofilePresenter profilePresenter;

  @override
  void onInit() {
    getProfileData();
    super.onInit();
  }

  GetProfileData? profileData;

  Future<void> getProfileData() async {
    var response = await profilePresenter.getProfile(
      isLoading: false,
    );
    if (response?.data != null) {
      profileData = response?.data;
      update();
    }
  }
}
