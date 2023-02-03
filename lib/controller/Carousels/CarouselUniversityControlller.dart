import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/data/datasource/static/static.dart';
import 'package:Joswor/view/screen/auth/login.dart';
import 'package:Joswor/view/screen/auth/signUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:path/path.dart';

abstract class CarouselUniversityController extends GetxController {
  onPageChanged(int index);
}

class CarouselUniversityControllerImpl extends CarouselUniversityController
    with GetSingleTickerProviderStateMixin {
  int activePage = 0;
  late PageController pageController;

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
  onPageChanged(int index) {
    activePage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController(viewportFraction: 0.8, initialPage: 0);

    super.onInit();
  }
}
