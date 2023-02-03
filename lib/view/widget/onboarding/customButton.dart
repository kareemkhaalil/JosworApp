import 'package:Joswor/controller/onBoarding_Controller.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      height: 50,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(
          horizontal: 100,
          vertical: 4,
        ),
        onPressed: () {
          controller.next();
        },
        child: Text(
          'Continue'.tr,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontFamily: "fontFamily".tr,
                fontSize: 16,
                color: AppColors.darkBlack,
              ),
        ),
      ),
      color: AppColors.button,
    );
  }
}
