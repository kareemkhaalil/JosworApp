import 'package:Joswor/controller/auth/successSignUpController.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:Joswor/view/widget/auth/customButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SuccessSighUp extends StatelessWidget {
  const SuccessSighUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImpl controller =
        Get.put(SuccessSignUpControllerImpl());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset(
                AppImageAsset.success,
                height: 300,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'successSignUp'.tr,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontFamily: "fontFamily".tr,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: AppColors.darkGreen,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              child: CustomButtonAuth(
                text: 'login'.tr.toUpperCase(),
                onPressed: () {
                  controller.goToLogin();
                },
                color: Colors.green.withOpacity(0.8),
                //AppColors.button,

                textColor: AppColors.background,
                width: double.infinity,
                height: 50,
                fontSize: 20,
                elevation: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
