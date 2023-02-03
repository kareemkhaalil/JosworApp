import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onBoarding_Controller.dart';

class CustomDotsControlOnBoarding extends StatelessWidget {
  const CustomDotsControlOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              OnBoardingList.length,
              (index) => AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                duration: const Duration(milliseconds: 900),
                width: controller.currentPage == index ? 30 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: controller.currentPage == index
                      ? AppColors.darkBlack
                      : AppColors.lightBlack,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
