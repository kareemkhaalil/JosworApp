import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/functions/handlingDataController.dart';
import 'package:Joswor/data/datasource/remote/forgetPassword/checkEmail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController {
  send();
  checkEmail();
}

class ForgotPasswordControllerImpl extends ForgotPasswordController {
  late TextEditingController emailController;
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StatusRequest? statusRequest;

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
  send() {}

  @override
  checkEmail() async {
    var formState = formKey.currentState;
    if (formState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postData(
        emailController.text,
      );
      print("==================================== Controller $response");
      statusRequest = handlingData(response);
      update();
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == 'success') {
          // data.addAll(response['data']);
          Get.offNamed(
            AppRoute.verifingCode,
            arguments: {"email": emailController.text},
          );
        } else {
          Get.defaultDialog(
            title: 'forgotPasswordErrorTitle'.tr,
            middleText: 'forgotPasswordErrorDesc'.tr,
          );
          statusRequest = StatusRequest.noData;
        }
      }
      update();
    }
  }
}
