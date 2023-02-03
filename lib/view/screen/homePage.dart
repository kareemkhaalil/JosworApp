import 'package:Joswor/controller/navBarController.dart';
import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:Joswor/core/contstant/jowsor_icons.dart';
import 'package:Joswor/core/contstant/svg.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/view/screen/appDrawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  HomePageControllerImpl controller = Get.put(HomePageControllerImpl());
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    (context as Element).reassemble();
    return GetBuilder<HomePageControllerImpl>(builder: (controller) {
      MyService myservice = Get.find();
      return controller.statusRequest == StatusRequest.loading
          ? Center(
              child: Lottie.asset(
                AppImageAsset.loading,
              ),
            )
          : Scaffold(
              drawerEnableOpenDragGesture: true,
              endDrawer: AppDrawer(context: context),
              body: Stack(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImageAsset.pattern),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: controller.pages.elementAt(controller.selectedIndex),
                  ),
                ],
              ),
              appBar: AppBar(
                backgroundColor: AppColors.darkGreen,
                elevation: 6,
                actions: [
                  GestureDetector(
                    onTap: () => controller.goToHome(),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.15,
                          decoration: BoxDecoration(
                            color: AppColors.button,
                            borderRadius:
                                myservice.prefs.getString('lang') == 'ar'
                                    ? BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                      )
                                    : BorderRadius.only(
                                        topRight: Radius.circular(20),
                                      ),
                          ),
                          child: Center(
                            child: Image.asset(
                              AppImageAsset.logo,
                              height:
                                  MediaQuery.of(context).size.height * 0.058,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        Text(
                          'joswor'.tr,
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.button,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Builder(builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(
                        onPressed: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                        icon: SvgsWidget().menue,
                      ),
                    );
                  }),
                ],
              ),
              bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Colors.black.withOpacity(.1),
                    )
                  ],
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8),
                    child: GNav(
                      rippleColor: Colors.grey[300]!,
                      hoverColor: Colors.grey[100]!,
                      gap: 8,
                      haptic: true,
                      activeColor: AppColors.darkGreen,
                      iconSize: 25,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      duration: const Duration(milliseconds: 500),
                      tabBackgroundColor: AppColors.button.withOpacity(0.4),
                      color: AppColors.button,
                      tabs: [
                        GButton(
                          icon: Jowsor.home,
                          text: 'home'.tr,
                          textStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 14,
                                  ),
                        ),
                        GButton(
                          icon: Jowsor.article,
                          text: 'articles'.tr,
                          textStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 14,
                                  ),
                        ),
                        GButton(
                          icon: Jowsor.offers,
                          text: 'offers'.tr,
                          textStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 14,
                                  ),
                        ),
                        GButton(
                          icon: Jowsor.university,
                          text: 'universities'.tr,
                          textStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 14,
                                  ),
                        ),
                        GButton(
                          icon: Jowsor.submission,
                          text: 'submission'.tr,
                          textStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "fontFamily".tr,
                                    fontSize: 14,
                                  ),
                        ),
                      ],
                      selectedIndex: controller.selectedIndex,
                      onTabChange: (index) {
                        controller.changePage(index);
                      },
                    ),
                  ),
                ),
              ),
            );
    });
  }
}
