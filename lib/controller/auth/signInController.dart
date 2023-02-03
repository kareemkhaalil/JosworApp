import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/functions/handlingDataController.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/data/datasource/remote/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgotPassword();
  goToHome();
  RxBool isPasswordVisible = true.obs;
  LoginData loginData = LoginData(Get.find());
}

class LoginControllerImpl extends LoginController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController nameController;
  late TextEditingController passwordController;
  StatusRequest? statusRequest;
  MyService myService = Get.find();

  @override
  login() async {
    try {
      var form = formKey.currentState;
      if (form!.validate()) {
        statusRequest = StatusRequest.loading;
        update();
        var response = await loginData.postData(
          passwordController.text,
          nameController.text,
        );
        print(passwordController.text);
        print(nameController.text);
        print("==================================== Controller $response");
        statusRequest = handlingData(response);
        update();
        if (statusRequest == StatusRequest.success) {
          if (response['status'] == 200) {
            // data.addAll(response['data']);
            myService.prefs.setBool('isLogin', true);
            Get.offNamed(
              AppRoute.homePage,
            );
          } else {
            Get.defaultDialog(
              title: 'loginErrorTitle'.tr,
              middleText: 'loginError'.tr,
            );
            statusRequest = StatusRequest.noData;
          }
        }
        update();
      } else {
        print('not valid');
      }
    } on Exception catch (e) {
      printError(info: e.toString());
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  goToHome() {
    Get.offAllNamed(AppRoute.homePage);
  }

  @override
  void onInit() {
    nameController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  goToForgotPassword() {
    Get.toNamed(AppRoute.forgotPassword);
  }
}
