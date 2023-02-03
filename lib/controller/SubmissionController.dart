import 'dart:io';

import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/functions/handlingDataController.dart';
import 'package:Joswor/data/datasource/remote/auth/login.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SubmissionController extends GetxController {
  login();
  goToSignUp();
  goToForgotPassword();
  RxBool isPasswordVisible = true.obs;
  LoginData loginData = LoginData(Get.find());
  dynamic onCountryValue(value);
  dynamic onStateValue(value);
  dynamic onCityValue(value);
  dynamic onAddressValue(value);
  dynamic onNationalityValue(value);
  Future pickFile();
}

class SubmissionControllerImpl extends SubmissionController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController dateController;
  late TextEditingController nationalityController;
  late TextEditingController degreeController;
  late TextEditingController countryController;
  StatusRequest? statusRequest;
  late String? countryValue;
  late String? stateValue;
  late String? cityValue;
  late String? address;
  late String? nationalityValue;
  File? file;
  FilePickerResult? result;

  @override
  login() async {
    try {
      var form = formKey.currentState;
      if (form!.validate()) {
        statusRequest = StatusRequest.loading;
        update();
        var response = await loginData.postData(
          passwordController.text,
          emailController.text,
        );
        print("==================================== Controller $response");
        statusRequest = handlingData(response);
        update();
        if (statusRequest == StatusRequest.success) {
          if (response['status'] == 'success') {
            // data.addAll(response['data']);
            Get.offNamed(
              AppRoute.home,
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

  @override
  onCountryValue(value) {
    countryValue = value;
    countryController.text = value;
    update();
  }

  Future pickFile() async {
    result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.image,
    );
    if (result == null) {
      print("No file selected");
    } else {
      result?.files.forEach((element) {});
    }
  }

  @override
  onStateValue(value) {
    stateValue = value;
    update();
  }

  onCityValue(value) {
    cityValue = value;
    update();
  }

  onAddressValue(value) {
    address = value;
    update();
  }

  @override
  onNationalityValue(value) {
    nationalityValue = value;
    nationalityController.text = value;
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    phoneController = TextEditingController();
    dateController = TextEditingController();
    nationalityController = TextEditingController();
    degreeController = TextEditingController();
    countryController = TextEditingController();

    countryValue = '';
    stateValue = '';
    cityValue = '';
    address = '';
    nationalityValue = '';

    super.onInit();
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  goToForgotPassword() {
    Get.toNamed(AppRoute.forgotPassword);
  }
}
