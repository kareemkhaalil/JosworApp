import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/data/datasource/static/static.dart';
import 'package:Joswor/view/screen/auth/login.dart';
import 'package:Joswor/view/screen/auth/signUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:path/path.dart';

abstract class OffersPageController extends GetxController {}

class OffersPageControllerImpl extends OffersPageController
    with GetSingleTickerProviderStateMixin {
  ScrollController controller = ScrollController();
  GlobalKey<ScaffoldState> formKey = GlobalKey<ScaffoldState>();
  int currentPage = 0;
  bool isLogin = false;
  bool isSignUp = false;
  MyService myService = Get.find();

  @override
  void onInit() {
    controller = ScrollController();
    formKey = GlobalKey<ScaffoldState>();
    super.onInit();
  }
}
