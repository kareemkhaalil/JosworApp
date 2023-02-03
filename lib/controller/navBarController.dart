import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/routs.dart';
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

abstract class HomePageController extends GetxController {
  changePage(int index);
  nextPage();
  goToArticles();
  goToOffers();
  goToUniversity();
  goToSubmission();
  goToHome();
  goToAboutUs();
}

class HomePageControllerImpl extends HomePageController
    with GetSingleTickerProviderStateMixin {
  StatusRequest? statusRequest;

  int selectedIndex = 0;
  int seeMorePage = 0;
  MyService myService = Get.find();

  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  List<Widget> pages = <Widget>[
    Home(),
    Articles(),
    Offers(),
    University(),
    Submission(),
    AboutUs(),
  ];
  @override
  changePage(int index) {
    selectedIndex = index;
    update();
  }

  goToArticles() {
    selectedIndex = 1;
    update();
  }

  goToSubmission() {
    selectedIndex = 4;
    update();
  }

  goToAboutUs() {
    selectedIndex = 5;
    // Get.toNamed(AppRoute.aboutUs);
    update();
  }

  goToHome() {
    selectedIndex = 0;
    update();
  }

  goToOffers() {
    selectedIndex = 2;
    update();
  }

  goToUniversity() {
    selectedIndex = 3;
    update();
  }

  logout() {
    myService.prefs.setBool('isLogin', false);
    Get.offNamed(AppRoute.onBoarding);
  }

  @override
  nextPage() {
    selectedIndex++;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
