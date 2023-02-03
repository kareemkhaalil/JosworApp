import 'package:Joswor/controller/auth/choseWayController.dart';
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

class ChoseWay extends StatelessWidget {
  const ChoseWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChoseWayControllerImpl controller = Get.put(ChoseWayControllerImpl());
    return Scaffold(
      body: Container(),
    );
  }
}
