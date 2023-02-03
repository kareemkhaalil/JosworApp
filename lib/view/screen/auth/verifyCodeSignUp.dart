import 'package:Joswor/controller/forgetPassword/verifyCodeController.dart';
import 'package:Joswor/controller/auth/verifyCodeSignUpController.dart';
import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:Joswor/view/screen/auth/logoAuth.dart';
import 'package:Joswor/view/widget/auth/customButtonAuth.dart';
import 'package:Joswor/view/widget/auth/customTextFormAuth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class VerifingCodeSignUp extends StatelessWidget {
  const VerifingCodeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    verifyCodeSignUpControllerImpl controller =
        Get.put(verifyCodeSignUpControllerImpl());
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          'verify'.tr,
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
      body: GetBuilder<verifyCodeSignUpControllerImpl>(
        builder: (controller) => controller.statusRequest ==
                StatusRequest.loading
            ? Center(
                child: Lottie.asset(
                  AppImageAsset.loading,
                ),
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
                      'verifyDesc'.tr,
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

                    /// Email Text Form
                    OtpTextField(
                      numberOfFields: 6,
                      borderColor: AppColors.button,
                      borderRadius: BorderRadius.circular(15),
                      focusedBorderColor: AppColors.darkBlack,
                      enabledBorderColor: AppColors.button,
                      cursorColor: AppColors.lightBlack,

                      fieldWidth: 35,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        controller.goToSuccessSignUp(verificationCode);
                      }, // end onSubmit
                    ),

                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'resend'.tr,
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontFamily: "fontFamily".tr,
                                      color: AppColors.lightBlack,
                                    ),
                          ),
                        ),
                      ],
                    ),

                    // CustomButtonAuth(
                    //   text: 'send'.tr.toUpperCase(),
                    //   onPressed: () {},
                    //   color: AppColors.button,
                    //   textColor: AppColors.background,
                    //   width: double.infinity,
                    //   height: 50,
                    //   fontSize: 20,
                    //   elevation: 5,
                    // ),
                  ],
                ),
              ),
      ),
    );
  }
}
