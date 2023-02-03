import 'package:Joswor/controller/auth/signupController.dart';
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

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImpl controller = Get.put(SignUpControllerImpl());
    return Scaffold(
      backgroundColor: AppColors.background,
      body: WillPopScope(
        onWillPop: alertExtitApp,
        child: Form(
          key: controller.formKey,
          child: GetBuilder<SignUpControllerImpl>(
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
                        LogoAuth(
                          height: 150,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'signUpDesc'.tr,
                            style:
                                Theme.of(context).textTheme.headline2!.copyWith(
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

                        /// Name Text Form
                        CustomTextFormFeild(
                          obscureText: false,
                          validator: (val) {
                            return validInput(val!, 5, 100, 'userName');
                          },
                          hintText: 'hintName'.tr,
                          suffixIcon: Icon(Icons.person_outline_outlined),
                          keyboardType: TextInputType.name,
                          labelText: 'name'.tr,
                          controller: controller.nameController,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),

                        /// Phone Text Form
                        CustomTextFormFeild(
                          validator: (val) {
                            return validInput(val!, 5, 100, 'phone');
                          },
                          hintText: 'hintPhone'.tr,
                          suffixIcon: Icon(Icons.phone_outlined),
                          keyboardType: TextInputType.phone,
                          labelText: 'phone'.tr,
                          controller: controller.phoneController,
                          obscureText: false,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),

                        /// Email Text Form
                        CustomTextFormFeild(
                          obscureText: false,
                          validator: (val) {
                            return validInput(val!, 5, 100, 'email');
                          },
                          hintText: 'hintEmail'.tr,
                          suffixIcon: Icon(Icons.email_outlined),
                          keyboardType: TextInputType.emailAddress,
                          labelText: 'email'.tr,
                          controller: controller.emailController,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
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
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),

                        CustomButtonAuth(
                          text: 'signUp'.tr.toUpperCase(),
                          onPressed: () {
                            // controller.goToHome();
                            controller.signUp();
                          },
                          color: AppColors.button,
                          textColor: AppColors.background,
                          width: double.infinity,
                          height: 50,
                          fontSize: 20,
                          elevation: 5,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'alreadyHaveAccount'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontFamily: "fontFamily".tr,
                                  ),
                            ),
                            TextButton(
                              onPressed: () {
                                controller.goToSignIn();
                              },
                              child: Text(
                                'login'.tr,
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
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
