import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/functions/alertTextApp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/onboarding/customSlider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: WillPopScope(
        onWillPop: () async {
          return alertExtitApp();
        },
        child: SafeArea(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Stack(
                  children: const <Widget>[
                    CustomSliderOnBoarding(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
