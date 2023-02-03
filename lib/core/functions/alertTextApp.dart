import 'dart:io';

import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/view/widget/auth/customButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExtitApp() {
  Get.defaultDialog(
    backgroundColor: AppColors.background,
    title: 'alertExitAppTitle'.tr,
    titleStyle: TextStyle(
      color: AppColors.darkBlack,
      fontSize: 20,
      fontFamily: "fontFamily".tr,
      fontWeight: FontWeight.bold,
    ),
    content: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'alertExitAppDesc'.tr,
        style: Theme.of(Get.context!).textTheme.headline1!.copyWith(
              fontFamily: "fontFamily".tr,
              fontSize: 16,
              color: AppColors.lightBlack.withOpacity(0.7),
            ),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 6,
        ),
        child: CustomButtonAuth(
          text: 'alertExitAppYes'.tr,
          onPressed: () {
            exit(0);
          },
          color: AppColors.button,
          textColor: AppColors.darkBlack,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
          width: double.infinity,
          height: 50,
          fontSize: 20,
          elevation: 2,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 6,
        ),
        child: CustomButtonAuth(
          text: 'alertExitAppNo'.tr,
          onPressed: () {
            Get.back();
          },
          color: AppColors.button,
          textColor: AppColors.darkBlack,
          fontWeight: FontWeight.bold,
          width: double.infinity,
          height: 50,
          fontSize: 20,
          elevation: 2,
        ),
      ),
      const SizedBox(
        height: 5,
      ),
    ],
  );
  return Future.value(true);
}
