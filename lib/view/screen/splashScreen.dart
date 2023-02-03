import 'dart:async';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    MyService myService = Get.find();
    startTimer(myService);
  }

  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage(
      AppImageAsset.SplashScreen,
    ); //<- Creates an object that fetches an image.
    var image = Image(
      image: assetsImage,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    ); //<- Creates a widget that displays an image.

    return Scaffold(
      body: image,
    );
  }

  void startTimer(myService) {
    Timer(
      Duration(seconds: 6),
      () {
        navigatUser(myService);
      },
    );
  }

  void navigatUser(myService) async {
    var status = myService.prefs.getBool('isLogin');
    if (status == true) {
      Get.offNamed(AppRoute.homePage);
    } else {
      Get.offNamed(AppRoute.onBoarding);
    }
  }
}
