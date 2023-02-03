import 'package:Joswor/controller/auth/successRestPassword.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/view/widget/auth/customButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SuccessResetPasword extends StatelessWidget {
  const SuccessResetPasword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessRestPasswordControllerImpl controller =
        Get.put(SuccessRestPasswordControllerImpl());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Icon(
                MdiIcons.checkCircle,
                color: AppColors.button,
                size: 300,
                shadows: [
                  BoxShadow(
                    color: AppColors.lightBlack.withOpacity(0.2),
                    blurRadius: 50,
                    spreadRadius: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'successResetPassword'.tr,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontFamily: "fontFamily".tr,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
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
                text: 'login'.tr,
                onPressed: () {
                  controller.goToLogin();
                },
                color: AppColors.button,
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
