import 'package:Joswor/core/contstant/routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();
  goToVerifyCodeSignUp();
}

class CheckEmailControllerImpl extends CheckEmailController {
  late TextEditingController emailController;

  @override
  void onInit() {
    emailController = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  checkEmail() {}

  @override
  goToVerifyCodeSignUp() {
    Get.toNamed(AppRoute.verifingCodeSignUp);
  }
}
