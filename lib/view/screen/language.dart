import 'package:Joswor/core/contstant/fonts.dart';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/localization/changeLocal.dart';
import 'package:Joswor/view/widget/language/customLangButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/contstant/color.dart';

class Language extends GetView<LocalController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 250, horizontal: 20),
        child: Column(
          children: [
            Image.asset(
              AppImageAsset.logo,
              height: 80,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "title".tr,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 20,
                    fontFamily: "fontFamily".tr,
                  ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Divider(
                color: AppColors.button,
                thickness: 2,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity * 0.8,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.lightBlack,
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomLangButton(
                    lang: 'English',
                    fontFamily: AppFonts().english,
                    onPressed: () {
                      controller.changeLanguage('en');
                      AppFonts().font = AppFonts().english!;

                      Get.offNamed(AppRoute.onBoarding);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomLangButton(
                    lang: 'العربية',
                    fontFamily: AppFonts().arabic,
                    onPressed: () {
                      controller.changeLanguage('ar');
                      AppFonts().font = AppFonts().arabic!;
                      Get.offNamed(AppRoute.onBoarding);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Text(
//       'العربية',
//       style: Theme.of(context).textTheme.headline2!.copyWith(
//             fontFamily: "fontFamily".tr,
//             fontSize: 20,
//             color: AppColors.button,
//             fontWeight: FontWeight.w800,
//           ),
//     ),
//     Transform.scale(
//       scale: 1,
//       child: CupertinoSwitch(
//         value: controllerLang.isEnglish,
//         activeColor: AppColors.button,
//         thumbColor: AppColors.background,
//         trackColor: AppColors.button.withOpacity(0.4),
//         onChanged: (value) {
//           controllerLang.changeLanguage(value);
//         },
//         dragStartBehavior: DragStartBehavior.start,
//       ),
//     ),
//     Text(
//       'English',
//       style: Theme.of(context).textTheme.headline2!.copyWith(
//             fontFamily: "fontFamily".tr,
//             fontSize: 20,
//             color: AppColors.button,
//             fontWeight: FontWeight.w800,
//           ),
//     ),
//   ],
// ),
