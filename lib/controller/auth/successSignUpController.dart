import 'package:Joswor/core/contstant/routs.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goToLogin();
}

class SuccessSignUpControllerImpl extends SuccessSignUpController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }
}
