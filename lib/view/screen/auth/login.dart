import 'package:Joswor/controller/auth/signInController.dart';
import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/contstant/fonts.dart';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:Joswor/core/functions/alertTextApp.dart';
import 'package:Joswor/core/functions/validInput.dart';
import 'package:Joswor/core/localization/changeLocal.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/view/screen/auth/logoAuth.dart';
import 'package:Joswor/view/widget/auth/customButtonAuth.dart';
import 'package:Joswor/view/widget/auth/customTextFormAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyService myservice = Get.find();
    LoginControllerImpl controller = Get.put(LoginControllerImpl());
    return Scaffold(
      backgroundColor: AppColors.background,
      body: WillPopScope(
        onWillPop: alertExtitApp,
        child: Form(
            key: controller.formKey,
            child: GetBuilder<LoginControllerImpl>(
              builder: (controller) => controller.statusRequest ==
                      StatusRequest.loading
                  ? Center(
                      child: Lottie.asset(
                        AppImageAsset.loading,
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 20),
                      child: ListView(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          LogoAuth(height: 150),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'loginDesc'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Divider(
                              color: AppColors.button,
                              thickness: 2,
                            ),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),

                          /// Email Text Form
                          CustomTextFormFeild(
                            obscureText: false,
                            validator: (val) {
                              return validInput(val!, 3, 100, 'userName');
                            },
                            isPassword: false,
                            hintText: 'hintName'.tr,
                            suffixIcon: Icon(Icons.email_outlined),
                            keyboardType: TextInputType.emailAddress,
                            labelText: 'name'.tr,
                            controller: controller.nameController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          /// Password Text Form
                          Obx(
                            () => CustomTextFormFeild(
                              validator: (val) {
                                return validInput(val, 5, 30, 'password');
                              },
                              hintText: 'hintPassword'.tr,
                              suffixIcon: controller.isPasswordVisible.value
                                  ? Icon(Icons.lock_outline)
                                  : Icon(
                                      Icons.lock_open_outlined,
                                      color: Colors.green.withOpacity(0.5),
                                    ),
                              obscureText: controller.isPasswordVisible.value,
                              onTap: () {
                                controller.isPasswordVisible.value =
                                    !controller.isPasswordVisible.value;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              labelText: 'password'.tr,
                              controller: controller.passwordController,
                            ),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          // TextButton(
                          //   onPressed: () {
                          //     controller.goToForgotPassword();
                          //   },
                          //   child: Text(
                          //     'forgotPassword'.tr,
                          //     style: Theme.of(context)
                          //         .textTheme
                          //         .bodyText1!
                          //         .copyWith(
                          //           fontFamily: "fontFamily".tr,
                          //           color: AppColors.button,
                          //         ),
                          //     textAlign: TextAlign.start,
                          //   ),
                          //   style: ButtonStyle(
                          //     alignment:
                          //         myservice.prefs.getString('lang') == 'ar'
                          //             ? Alignment.centerLeft
                          //             : Alignment.centerRight,
                          //   ),
                          // ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          MaterialButton(
                            onPressed: () {
                              controller.login();
                              // controller.login();
                            },
                            child: Container(
                                child: Center(
                                  child: Text(
                                    'login'.tr.toUpperCase(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: "fontFamily".tr,
                                          color: Colors.white,
                                        ),
                                  ),
                                ),
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Color(0xffF2D472),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xffF2D472).withAlpha(100),
                                        blurRadius: 10.0,
                                        spreadRadius: 5.0,
                                        offset: Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      ),
                                    ])),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'dontHaveAccount'.tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontFamily: "fontFamily".tr,
                                    ),
                              ),
                              TextButton(
                                onPressed: () {
                                  controller.goToSignUp();
                                },
                                child: Text(
                                  'signUp'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        color: AppColors.button,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     InkWell(
                          //       borderRadius: BorderRadius.circular(10),
                          //       overlayColor:
                          //           MaterialStateProperty.all(AppColors.button),
                          //       onTap: () {
                          //         print('facebook');
                          //       },
                          //       child: PhysicalModel(
                          //         color: AppColors.darkBlack.withOpacity(0.2),
                          //         elevation: 5,
                          //         shadowColor:
                          //             AppColors.darkBlack.withOpacity(0.2),
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
                          //                 borderRadius:
                          //                     BorderRadius.circular(13),
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
                          //       overlayColor:
                          //           MaterialStateProperty.all(AppColors.button),
                          //       onTap: () {
                          //         print('facebook');
                          //       },
                          //       child: PhysicalModel(
                          //         color: AppColors.darkBlack.withOpacity(0.2),
                          //         elevation: 5,
                          //         shadowColor:
                          //             AppColors.darkBlack.withOpacity(0.2),
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
                          //                 borderRadius:
                          //                     BorderRadius.circular(15),
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
                    ),
            )),
      ),
    );
  }
}
