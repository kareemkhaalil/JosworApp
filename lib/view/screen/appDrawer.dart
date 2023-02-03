import 'package:Joswor/controller/LanguageSwitcherController.dart';
import 'package:Joswor/controller/navBarController.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/contstant/fonts.dart';
import 'package:Joswor/core/contstant/jowsor_icons.dart';
import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/localization/changeLocal.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/view/widget/language/customLangButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key, context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomePageControllerImpl controllerHome = Get.put(HomePageControllerImpl());
    LanguageSwitcherControllerImpl controllerLang =
        Get.put(LanguageSwitcherControllerImpl());
    MyService myservice = Get.find();
    return SafeArea(
      bottom: false,
      child: ClipRRect(
        borderRadius: myservice.prefs.getString('lang') == 'ar'
            ? BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(
                  10,
                ),
              )
            : BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(
                  10,
                ),
              ),
        child: Container(
          color: AppColors.darkGreen,
          width:
              MediaQuery.of(context).size.width * 0.8, // -> 30% of the screen
          child: Drawer(
            elevation: 8,
            backgroundColor: AppColors.darkGreen,
            child: Padding(
              padding: myservice.prefs.getString('lang') == 'ar'
                  ? EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01,
                      left: MediaQuery.of(context).size.width * 0.03,
                    )
                  : EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01,
                      right: MediaQuery.of(context).size.width * 0.03,
                    ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: [
                      MaterialButton(
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.button,
                          child: Icon(
                            Icons.close,
                            color: AppColors.darkGreen,
                            size: 20,
                          ),
                        ),
                        onPressed: () {
                          Scaffold.of(context).closeEndDrawer();
                        },
                      ),
                      const Spacer(),
                      Text(
                        'Joswor',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              fontFamily: "fontFamily".tr,
                              fontSize: 30,
                              color: AppColors.button,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.button,
                        child: Icon(
                          Icons.person,
                          color: AppColors.darkGreen,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Align(
                    alignment: myservice.prefs.getString('lang') == 'ar'
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    child: Text(
                      'BROWSE',
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontFamily: "fontFamily".tr,
                            fontSize: 20,
                            color: AppColors.button.withOpacity(0.6),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.001,
                  ),
                  // home
                  Divider(
                    color: AppColors.background.withOpacity(0.3),
                    thickness: 1,
                    indent: MediaQuery.of(context).size.width * 0.05,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                        AppColors.button.withOpacity(0.2),
                      ),
                    ),
                    onPressed: () {
                      controllerHome.goToHome();
                      (context as Element).reassemble();
                      Scaffold.of(context).closeEndDrawer();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'home'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 20,
                                    color: AppColors.button,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Icon(
                              Jowsor.home,
                              color: AppColors.button,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // articles
                  Divider(
                    color: AppColors.background.withOpacity(0.3),
                    thickness: 1,
                    indent: MediaQuery.of(context).size.width * 0.05,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                        AppColors.button.withOpacity(0.2),
                      ),
                    ),
                    onPressed: () {
                      controllerHome.goToArticles();
                      (context as Element).reassemble();
                      Scaffold.of(context).closeEndDrawer();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'articles'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 20,
                                    color: AppColors.button,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Icon(
                              Jowsor.article,
                              color: AppColors.button,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // offers
                  Divider(
                    color: AppColors.background.withOpacity(0.3),
                    thickness: 1,
                    indent: MediaQuery.of(context).size.width * 0.05,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                        AppColors.button.withOpacity(0.2),
                      ),
                    ),
                    onPressed: () {
                      controllerHome.goToOffers();
                      (context as Element).reassemble();
                      Scaffold.of(context).closeEndDrawer();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'offers'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 20,
                                    color: AppColors.button,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Icon(
                              Jowsor.offers,
                              color: AppColors.button,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // university
                  Divider(
                    color: AppColors.background.withOpacity(0.3),
                    thickness: 1,
                    indent: MediaQuery.of(context).size.width * 0.05,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                        AppColors.button.withOpacity(0.2),
                      ),
                    ),
                    onPressed: () {
                      controllerHome.goToUniversity();
                      (context as Element).reassemble();
                      Scaffold.of(context).closeEndDrawer();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'university'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 20,
                                    color: AppColors.button,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Icon(
                              Jowsor.university,
                              color: AppColors.button,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // submission
                  Divider(
                    color: AppColors.background.withOpacity(0.3),
                    thickness: 1,
                    indent: MediaQuery.of(context).size.width * 0.05,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                        AppColors.button.withOpacity(0.2),
                      ),
                    ),
                    onPressed: () {
                      controllerHome.goToSubmission();
                      (context as Element).reassemble();
                      Scaffold.of(context).closeEndDrawer();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'submission'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 20,
                                    color: AppColors.button,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Icon(
                              Jowsor.submission,
                              color: AppColors.button,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // about us
                  Divider(
                    color: AppColors.background.withOpacity(0.3),
                    thickness: 1,
                    indent: MediaQuery.of(context).size.width * 0.05,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                        AppColors.button.withOpacity(0.2),
                      ),
                    ),
                    onPressed: () {
                      controllerHome.goToAboutUs();
                      (context as Element).reassemble();
                      Scaffold.of(context).closeEndDrawer();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'about'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 20,
                                    color: AppColors.button,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            Icon(
                              Icons.info_outline,
                              color: AppColors.button,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: AppColors.background.withOpacity(0.3),
                    thickness: 1,
                    indent: MediaQuery.of(context).size.width * 0.05,
                  ),
                  MaterialButton(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 30,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'logout'.tr,
                            style:
                                Theme.of(context).textTheme.headline2!.copyWith(
                                      fontFamily: "fontFamily".tr,
                                      fontSize: 20,
                                      color: AppColors.button,
                                      fontWeight: FontWeight.w800,
                                    ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Icon(
                            Icons.logout,
                            color: AppColors.button,
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      controllerHome.logout();
                    },
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomLangButton(
                        lang: 'En',
                        fontFamily: AppFonts().english,
                        onPressed: () {
                          controllerLang.changeLanguage('en');
                        },
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      CustomLangButton(
                        lang: 'Ar',
                        fontFamily: AppFonts().arabic,
                        onPressed: () {
                          controllerLang.changeLanguage('ar');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
