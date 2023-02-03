import 'package:Joswor/controller/Carousels/CarouselArticlesControlller.dart';
import 'package:Joswor/controller/Carousels/CarouselOffersControlller.dart';
import 'package:Joswor/controller/Carousels/CarouselUniversityControlller.dart';
import 'package:Joswor/controller/navBarController.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:Joswor/core/contstant/svg.dart';
import 'package:Joswor/core/functions/alertTextApp.dart';
import 'package:Joswor/core/localization/changeLocal.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/view/screen/appDrawer.dart';
import 'package:Joswor/view/screen/articles/arcPage.dart';
import 'package:Joswor/view/screen/carousels/CarouselArticles.dart';
import 'package:Joswor/view/screen/carousels/CarouselOffers.dart';
import 'package:Joswor/view/screen/carousels/CarouselUniversity.dart';
import 'package:Joswor/view/screen/offers/offersPage.dart';
import 'package:Joswor/view/screen/university/universityPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  MyService myservice = Get.find();

  @override
  Widget build(BuildContext context) {
    HomePageControllerImpl controllerHome = Get.put(HomePageControllerImpl());

    CarouselUniversityControllerImpl controllerUni =
        Get.put(CarouselUniversityControllerImpl());
    CarouselArticlesControllerImpl controllerArt =
        Get.put(CarouselArticlesControllerImpl());
    CarouselOffersControllerImpl controllerOff =
        Get.put(CarouselOffersControllerImpl());
    return WillPopScope(
      onWillPop: () async {
        return alertExtitApp();
      },
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                // University,
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: LocalController().language == 'ar'
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      LocalController().language == 'ar'
                          ? Row(
                              children: [
                                Text(
                                  "explore".tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                Text(
                                  ", ${"university".tr}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                              ],
                            )
                          : Row(
                              children: [
                                Text(
                                  "${"university".tr} ,",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                                Text(
                                  "explore".tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    int index = controllerUni.pageController.page!.toInt();
                    Get.to(
                      () => UniversityPage(
                        index: index,
                      ),
                    );
                  },
                  child: CarouselUniversity(),
                ),

                Align(
                  alignment: LocalController().language == 'ar'
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: TextButton(
                        onPressed: () {
                          controllerHome.goToUniversity();
                          (context as Element).reassemble();
                        },
                        child: Text(
                          "seemore".tr,
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff536841),
                                  ),
                        )),
                  ),
                ),
                // Offers
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: myservice.prefs.getString('lang') == 'ar'
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.end,
                    children: [
                      Text(
                        "specialoffers".tr,
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              fontFamily: "fontFamily".tr,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    int index = controllerUni.pageController.page!.toInt();
                    Get.to(
                      () => OffersPage(
                        index: index,
                      ),
                    );
                  },
                  child: CarouselOffers(),
                ),
                Align(
                  alignment: LocalController().language == 'ar'
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: TextButton(
                      onPressed: () {
                        controllerHome.goToOffers();
                        (context as Element).reassemble();
                      },
                      child: Text(
                        "seemore".tr,
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              fontFamily: "fontFamily".tr,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff536841),
                            ),
                      ),
                    ),
                  ),
                ),
                // Articles
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: myservice.prefs.getString('lang') == 'ar'
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            "articles".tr,
                            style:
                                Theme.of(context).textTheme.headline2!.copyWith(
                                      fontFamily: "fontFamily".tr,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    int index = controllerUni.pageController.page!.toInt();
                    Get.to(
                      () => ArcPage(
                        index: index,
                      ),
                    );
                  },
                  child: CarouselArticles(),
                ),
                Align(
                  alignment: LocalController().language == 'ar'
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: TextButton(
                      onPressed: () {
                        controllerHome.goToArticles();
                        (context as Element).reassemble();
                      },
                      child: Text(
                        "seemore".tr,
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              fontFamily: "fontFamily".tr,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff536841),
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
