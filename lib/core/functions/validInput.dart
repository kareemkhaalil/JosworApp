import 'package:get/get.dart';

validInput(String? val, int min, int max, String type) {
  if (type == "userName") {
    if (!GetUtils.isUsername(val!) && val.isNotEmpty) {
      return 'notValidName'.tr;
    }
    if (val.isEmpty) {
      return 'notValidEmpty'.tr;
    }
    if (val.length < min && val.isNotEmpty) {
      return 'notValidMinLength'.tr;
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val!) && val.isNotEmpty) {
      return 'notValidEmail'.tr;
    }
    if (val.isEmpty) {
      return 'notValidEmpty'.tr;
    }
  }
  if (type == "password") {
    if (val!.length < min && val.isNotEmpty) {
      return 'notValidMinLength'.tr;
    }
    if (val.length > max) {
      return 'notValidMaxLength'.tr;
    }
    if (val.isEmpty) {
      return 'notValidEmpty'.tr;
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val!) && val.isNotEmpty) {
      return 'notValidPhone'.tr;
    }
    if (val.isEmpty) {
      return 'notValidEmpty'.tr;
    }
  }
  if (type == "date") {
    if (!GetUtils.isDateTime(val!) && val.isNotEmpty) {
      return 'notValidPhone'.tr;
    }
    if (val.isEmpty) {
      return 'notValidEmpty'.tr;
    }
  }
  if (type == "nationality") {
    if (!GetUtils.isDateTime(val!) && val.isNotEmpty) {
      return 'notValidPhone'.tr;
    }
    if (val.isEmpty) {
      return 'notValidEmpty'.tr;
    }
  }
  // if (val!.length < min) {
  //   return 'notValidMinLength'.tr;
  // }
  // if (val.length > max) {
  //   return 'notValidMaxLength'.tr;
  // }
  // if (val.isEmpty) {
  //   return 'notValidEmpty'.tr;
  // }
}
