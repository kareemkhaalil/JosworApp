import 'package:Joswor/controller/forgetPassword/ressetPasswordController.dart';
import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:Joswor/view/screen/auth/logoAuth.dart';
import 'package:Joswor/view/widget/auth/customButtonAuth.dart';
import 'package:Joswor/view/widget/auth/customTextFormAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class RessetPassword extends StatelessWidget {
  const RessetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RessetPasswordControllerImpl controller =
        Get.put(RessetPasswordControllerImpl());
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          'resetPassword'.tr,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontFamily: "fontFamily".tr,
                fontSize: 20,
                color: AppColors.lightBlack,
              ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: GetBuilder<RessetPasswordControllerImpl>(
        builder: (controller) => controller.statusRequest ==
                StatusRequest.loading
            ? Center(
                child: Lottie.asset(AppImageAsset.loading),
              )
            : Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    LogoAuth(height: 100),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'resetPasswordDesc'.tr,
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontFamily: "fontFamily".tr,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Divider(
                        color: AppColors.button,
                        thickness: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Container(
                    //   margin: const EdgeInsets.symmetric(horizontal: 20),
                    //   child: Text(
                    //     'forgotPasswordTitle'.tr,
                    //     style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    //           fontFamily: "fontFamily".tr,
                    //         ),
                    //     textAlign: TextAlign.center,
                    //   ),
                    // ),
                    const SizedBox(
                      height: 40,
                    ),

                    /// Reset Password Form
                    CustomTextFormFeild(
                      obscureText: false,
                      validator: (val) {},
                      hintText: 'hintResetPassword'.tr,
                      suffixIcon: Icon(Icons.email_outlined),
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'resetPassword'.tr,
                      controller: controller.passwordController,
                    ),
                    const SizedBox(
                      height: 40,
                    ),

                    /// Re Password Form
                    CustomTextFormFeild(
                      obscureText: false,
                      validator: (val) {},
                      hintText: 'hintConfirmPassword'.tr,
                      suffixIcon: Icon(Icons.email_outlined),
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'confirmPassword'.tr,
                      controller: controller.rePasswordController,
                    ),
                    const SizedBox(
                      height: 40,
                    ),

                    CustomButtonAuth(
                      text: 'send'.tr.toUpperCase(),
                      onPressed: () {
                        controller.goToSuccessResetPasword();
                      },
                      color: AppColors.button,
                      textColor: AppColors.background,
                      width: double.infinity,
                      height: 50,
                      fontSize: 20,
                      elevation: 5,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
