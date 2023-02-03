import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/data/datasource/static/static.dart';
import 'package:Joswor/view/screen/auth/login.dart';
import 'package:Joswor/view/screen/auth/signUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:path/path.dart';

abstract class ArcPageController extends GetxController {}

class ArcPageControllerImpl extends ArcPageController
    with GetSingleTickerProviderStateMixin {
  ScrollController controller = ScrollController();
  GlobalKey<ScaffoldState> formKey = GlobalKey<ScaffoldState>();
  int currentPage = 0;
  bool isLogin = false;
  bool isSignUp = false;
  var selectedIndex = 0;
  MyService myService = Get.find();
  changePage(int index) {
    selectedIndex = index;
    update();
  }

  List<String> images = [
    'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/1-1.jpg',
    'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/5-1.jpg',
    'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/8.jpg',
    'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/3-1-768x512.jpg',
    'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/1-1.jpg',
    'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/5-1.jpg',
    'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/8.jpg',
    'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/3-1-768x512.jpg',
    'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/1-1.jpg',
    'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/5-1.jpg',
    'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/8.jpg',
    'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/3-1-768x512.jpg',
  ];
  List name = [
    'sinop'.tr,
    'yildiz'.tr,
    'istanbul'.tr,
    'bilkent'.tr,
    'istanbul'.tr,
    'usak'.tr,
    'sinop'.tr,
    'yildiz'.tr,
    'istanbul'.tr,
    'bilkent'.tr,
    'istanbul'.tr,
    'usak'.tr,
  ];
  List nameAr = [
    'جامعة سينوب',
    'جامعة يلدز التقنية',
    'جامعة اسطنبول التقنية',
    'جامعة بيلكنت ',
    'جامعة اسطنبول',
    'جامعة أوساك',
    'جامعة سينوب',
    'جامعة يلدز التقنية',
    'جامعة اسطنبول التقنية',
    'جامعة بيلكنت ',
    'جامعة اسطنبول',
    'جامعة أوساك',
  ];
  List nameEn = [
    'Sinop University',
    'Yildiz Technical University',
    'Istanbul Technical University',
    'Bilkent University',
    'Istanbul University',
    'Usak University',
    'Sinop University',
    'Yildiz Technical University',
    'Istanbul Technical University',
    'Bilkent University',
    'Istanbul University',
    'Usak University',
  ];

  @override
  void onInit() {
    controller = ScrollController();
    formKey = GlobalKey<ScaffoldState>();
    super.onInit();
  }
}
