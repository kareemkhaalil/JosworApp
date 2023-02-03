import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/data/datasource/static/static.dart';
import 'package:Joswor/view/screen/auth/login.dart';
import 'package:Joswor/view/screen/auth/signUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:path/path.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
  skip();
  goToSignUp();
}

class OnBoardingControllerImpl extends OnBoardingController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int currentPage = 0;
  bool isLogin = false;
  bool isSignUp = false;
  MyService myService = Get.find();
  late PageController pageController;

  @override
  next() {
    currentPage++;
    update();
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  skip() {
    print('skip');
  }

  goToLogin() {
    Get.to(() => Login(), //next page class
        duration: Duration(seconds: 2), //duration of transitions, default 1 sec
        transition: Transition.leftToRight //transition effect
        );
  }

  goToSignUp() {
    Get.to(() => SignUp(), //next page class
        duration: Duration(seconds: 2), //duration of transitions, default 1 sec
        transition: Transition.leftToRight //transition effect

        );
    onClose();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
