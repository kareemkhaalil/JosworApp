import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/functions/handlingDataController.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/data/datasource/remote/signUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
  goToHome();
  RxBool isPasswordVisible = true.obs;
}

class SignUpControllerImpl extends SignUpController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController nameController;
  late TextEditingController phoneController;
  MyService myService = Get.find();

  SignUpData signupData = SignUpData(
    Get.find(),
  );

  List? data = [];
  @override
  StatusRequest? statusRequest;
  signUp() async {
    try {
      var form = formKey.currentState;
      if (form!.validate()) {
        statusRequest = StatusRequest.loading;
        update();
        var response = await signupData.postData(
          nameController.text,
          passwordController.text,
          emailController.text,
          phoneController.text,
        );
        print("==================================== Controller $response");
        statusRequest = handlingData(response);
        update();
        if (statusRequest == StatusRequest.success) {
          if (response["status"] == 200) {
            // data.addAll(response['data']);
            myService.prefs.setBool('isLogin', true);
            Get.offNamed(AppRoute.homePage);
          } else {
            Get.defaultDialog(
              title: 'signUpErrorTitle'.tr,
              middleText: 'signUpErrorDesc'.tr,
            );
            statusRequest = StatusRequest.noData;
          }
        }
        update();
      } else {
        printError(info: 'not valid');
      }
    } on Exception catch (e) {
      print(e);
      printError(info: e.toString());
    }
    // Get.toNamed(AppRoute.checkEmail);
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    nameController = TextEditingController();
    phoneController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  goToHome() {
    Get.offAllNamed(AppRoute.homePage);
  }
}
