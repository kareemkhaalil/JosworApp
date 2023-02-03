import 'package:Joswor/core/contstant/routs.dart';
import 'package:get/get.dart';

abstract class SuccessRestPasswordController extends GetxController {
  goToLogin();
}

class SuccessRestPasswordControllerImpl extends SuccessRestPasswordController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  goToLogin() {
    Get.toNamed(AppRoute.login);
  }
}
