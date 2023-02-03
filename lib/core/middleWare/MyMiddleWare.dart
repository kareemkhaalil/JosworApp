import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;
  MyService myService = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myService.prefs.getBool('seen') == true) {
      return const RouteSettings(name: AppRoute.login);
    }
    return null;
  }
}
