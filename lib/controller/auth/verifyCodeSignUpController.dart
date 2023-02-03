import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/functions/handlingDataController.dart';
import 'package:Joswor/data/datasource/remote/auth/verifyCodeSignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class verifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verificationCode);
}

class verifyCodeSignUpControllerImpl extends verifyCodeSignUpController {
  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());
  late String verifyCode;
  StatusRequest? statusRequest;
  String? email;
  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  send() {}

  @override
  checkCode() {}

  @override
  goToSuccessSignUp(String verificationCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeSignUpData.postData(email!, verificationCode);
    statusRequest = handlingData(response);
    update();
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        Get.toNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
          title: 'signUpErrorTitle'.tr,
          middleText: 'verifyCodeError'.tr,
        );
        statusRequest = StatusRequest.noData;
      }
    }
    update();
  }
}
