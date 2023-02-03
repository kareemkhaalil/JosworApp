import 'package:Joswor/core/contstant/fonts.dart';
import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/localization/changeLocal.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/data/datasource/static/static.dart';
import 'package:Joswor/routs.dart';
import 'package:Joswor/view/screen/aboutUs.dart';
import 'package:Joswor/view/screen/articles/articles.dart';
import 'package:Joswor/view/screen/auth/login.dart';
import 'package:Joswor/view/screen/auth/signUp.dart';
import 'package:Joswor/view/screen/home.dart';
import 'package:Joswor/view/screen/offers/offers.dart';
import 'package:Joswor/view/screen/submission.dart';
import 'package:Joswor/view/screen/university/university.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:path/path.dart';

abstract class LanguageSwitcherController extends GetxController {
  changeLanguage(String lang);
}

class LanguageSwitcherControllerImpl extends LanguageSwitcherController
    with GetSingleTickerProviderStateMixin {
  bool isEnglish = LocalController().language == 'en' ? true : false;
  MyService myservice = Get.find();
  LocalController localController = Get.find();
  // changeLanguage(bool value) {
  //   isEnglish = value;
  //   update();
  //   if (isEnglish == true) {
  //     localController.changeLanguage('en');
  //     AppFonts().font = AppFonts().english!;
  //
  //     update();
  //   } else {
  //     localController.changeLanguage('ar');
  //     AppFonts().font = AppFonts().arabic!;
  //     update();
  //   }
  //   update();
  // }
  changeLanguage(lang) {
    LocalController().changeLanguage(lang);
    update();
    if (lang == 'en') {
      AppFonts().font = AppFonts().english!;
      update();
    } else {
      AppFonts().font = AppFonts().arabic!;
      update();
    }
    update();
  }

  @override
  void onInit() {
    isEnglish = true;
    myservice = MyService();
    localController = LocalController();
    super.onInit();
  }
}
