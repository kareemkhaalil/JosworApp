import 'package:Joswor/controller/forgetPassword/forgotPasswordController.dart';
import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:Joswor/view/screen/auth/logoAuth.dart';
import 'package:Joswor/view/widget/auth/customButtonAuth.dart';
import 'package:Joswor/view/widget/auth/customTextFormAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgotPasswordControllerImpl controller =
        Get.put(ForgotPasswordControllerImpl());
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          'forgotPasswordTitle'.tr,
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
      body: GetBuilder<ForgotPasswordControllerImpl>(
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
                        'forgotPasswordTitle'.tr,
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
                      CustomTextFormFeild(
                        obscureText: false,
                        validator: (val) {},
                        hintText: 'hintForgotPassword'.tr,
                        suffixIcon: Icon(Icons.email_outlined),
                        keyboardType: TextInputType.emailAddress,
                        labelText: 'email'.tr,
                        controller: controller.emailController,
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      CustomButtonAuth(
                        text: 'send'.tr.toUpperCase(),
                        onPressed: () {
                          controller.checkEmail();
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
                      //
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       'dontHaveAccount'.tr,
                      //       style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      //             fontFamily: "fontFamily".tr,
                      //           ),
                      //     ),
                      //     TextButton(
                      //       onPressed: () {
                      //         controller.goToSignUp();
                      //       },
                      //       child: Text(
                      //         'register'.tr,
                      //         style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      //               fontFamily: "fontFamily".tr,
                      //               color: AppColors.button,
                      //             ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     InkWell(
                      //       borderRadius: BorderRadius.circular(10),
                      //       overlayColor: MaterialStateProperty.all(AppColors.button),
                      //       onTap: () {
                      //         print('facebook');
                      //       },
                      //       child: PhysicalModel(
                      //         color: AppColors.darkBlack.withOpacity(0.2),
                      //         elevation: 5,
                      //         shadowColor: AppColors.darkBlack.withOpacity(0.2),
                      //         borderRadius: BorderRadius.circular(20),
                      //         child: Container(
                      //           decoration: BoxDecoration(
                      //             color: AppColors.button,
                      //             borderRadius: BorderRadius.circular(15),
                      //           ),
                      //           child: Padding(
                      //             padding: const EdgeInsets.all(3.0),
                      //             child: Container(
                      //               padding: const EdgeInsets.all(3.2),
                      //               decoration: BoxDecoration(
                      //                 color: AppColors.background,
                      //                 borderRadius: BorderRadius.circular(13),
                      //               ),
                      //               child: Image.asset(
                      //                 AppImageAsset.facebookIcon,
                      //                 fit: BoxFit.contain,
                      //               ),
                      //             ),
                      //           ),
                      //           width: 50,
                      //           height: 50,
                      //         ),
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       width: 20,
                      //     ),
                      //     InkWell(
                      //       borderRadius: BorderRadius.circular(10),
                      //       overlayColor: MaterialStateProperty.all(AppColors.button),
                      //       onTap: () {
                      //         print('facebook');
                      //       },
                      //       child: PhysicalModel(
                      //         color: AppColors.darkBlack.withOpacity(0.2),
                      //         elevation: 5,
                      //         shadowColor: AppColors.darkBlack.withOpacity(0.2),
                      //         borderRadius: BorderRadius.circular(20),
                      //         child: Container(
                      //           decoration: BoxDecoration(
                      //             color: AppColors.button,
                      //             borderRadius: BorderRadius.circular(15),
                      //           ),
                      //           child: Padding(
                      //             padding: const EdgeInsets.all(3),
                      //             child: Container(
                      //               padding: const EdgeInsets.all(3.5),
                      //               decoration: BoxDecoration(
                      //                 borderRadius: BorderRadius.circular(15),
                      //                 color: AppColors.background,
                      //               ),
                      //               child: Image.asset(
                      //                 AppImageAsset.googleIcon,
                      //                 fit: BoxFit.contain,
                      //               ),
                      //             ),
                      //           ),
                      //           width: 50,
                      //           height: 50,
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                )),
    );
  }
}
