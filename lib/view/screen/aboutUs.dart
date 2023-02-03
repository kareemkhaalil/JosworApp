import 'package:Joswor/core/contstant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // about
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: AppColors.button,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    'about'.tr,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: "fontFamily".tr,
                          color: AppColors.darkGreen,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.darkGreen,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.darkGreen,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'aboutUsContent'.tr,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: "fontFamily".tr,
                          color: AppColors.button,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // mission
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: AppColors.button,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    'mission'.tr,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: "fontFamily".tr,
                          color: AppColors.darkGreen,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.darkGreen,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.darkGreen,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'ourMission'.tr,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: "fontFamily".tr,
                          color: AppColors.button,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // message
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: AppColors.button,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    'message'.tr,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: "fontFamily".tr,
                          color: AppColors.darkGreen,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.darkGreen,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.darkGreen,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'ourMessage'.tr,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: "fontFamily".tr,
                          color: AppColors.button,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // vission
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: AppColors.button,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    'vision'.tr,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: "fontFamily".tr,
                          color: AppColors.darkGreen,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.darkGreen,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.darkGreen,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'ourVision'.tr,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: "fontFamily".tr,
                          color: AppColors.button,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // why us
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: AppColors.button,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    'why'.tr,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: "fontFamily".tr,
                          color: AppColors.darkGreen,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.darkGreen,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.darkGreen,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'whyUs'.tr,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: "fontFamily".tr,
                          color: AppColors.button,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
