import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/functions/handlingDataController.dart';
import 'package:Joswor/data/datasource/remote/forgetPassword/verifyCodeForgetPass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword(String verifyCode);
}

class VerifyCodeControllerImpl extends VerifyCodeController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String verifyCode;
  String? email;
  VerifyCodeForgetPassData verifyCodeForgetPassData =
      VerifyCodeForgetPassData(Get.find());
  StatusRequest? statusRequest;

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
  goToResetPassword(verifyCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeForgetPassData.postData(email!, verifyCode);
    statusRequest = handlingData(response);
    update();
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        Get.toNamed(AppRoute.resetPassword, arguments: {"email": email});
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
