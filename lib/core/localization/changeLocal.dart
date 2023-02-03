import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/services.dart';

class LocalController extends GetxController {
  Locale? language;
  MyService myservice = Get.find();
  changeLanguage(String langcode) {
    Locale locale = Locale(langcode);
    myservice.prefs.setString('lang', langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String sharedPrefsLang = myservice.prefs.getString('lang').toString();
    if (sharedPrefsLang == 'ar') {
      language = const Locale('ar');
    } else if (sharedPrefsLang == 'en') {
      language = const Locale('en');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
