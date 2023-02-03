import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/functions/handlingDataController.dart';
import 'package:Joswor/data/datasource/remote/forgetPassword/resetPasword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RessetPasswordController extends GetxController {
  resetPasword();
  goToSuccessResetPasword();
}

class RessetPasswordControllerImpl extends RessetPasswordController {
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  late TextEditingController passwordController;
  late TextEditingController rePasswordController;
  late String email;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StatusRequest? statusRequest;

  @override
  void onInit() {
    email = Get.arguments['email'];
    passwordController = TextEditingController();
    rePasswordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    passwordController.dispose();
    rePasswordController.dispose();
    super.dispose();
  }

  @override
  resetPasword() {}

  @override
  goToSuccessResetPasword() async {
    if (passwordController.text != rePasswordController.text) {
      return Get.defaultDialog(
        title: 'passwordNotMatchTitle'.tr,
        middleText: 'passwordNotMatch'.tr,
      );
    }
    if (formKey.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postData(
        email,
        passwordController.text,
      );
      statusRequest = handlingData(response);
      update();
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == 'success') {
          Get.offNamed(AppRoute.successResetPassword);
        } else {
          Get.defaultDialog(
            title: 'signUpErrorTitle'.tr,
            middleText: 'resetPasswordError'.tr,
          );
          statusRequest = StatusRequest.noData;
        }
      }
      update();
    }
  }
}
