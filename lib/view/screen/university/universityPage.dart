import 'dart:math';

import 'package:Joswor/controller/ArcPageController.dart';
import 'package:Joswor/controller/Carousels/CarouselUniversityControlller.dart';
import 'package:Joswor/controller/UniversityPageController.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:Joswor/core/contstant/jowsor_icons.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/test.dart';
import 'package:Joswor/view/screen/appDrawer.dart';
import 'package:Joswor/view/screen/university/university.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class UniversityPage extends StatelessWidget {
  var index;
  UniversityPage({
    Key? key,
    this.index,
  }) : super(key: key);

  Widget build(BuildContext context) {
    UniversityPageControllerImpl? controller =
        Get.put(UniversityPageControllerImpl());
    CarouselUniversityControllerImpl controllerUni =
        Get.put(CarouselUniversityControllerImpl());
    var formKey = controller!.formKey;
    MyService myservice = Get.find();

    return Scaffold(
      key: formKey,
      drawerEnableOpenDragGesture: true,
      endDrawer: AppDrawer(context: context),
      body: CustomScrollView(
        controller: controller.controller,
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          Builder(builder: (context) {
            return SliverAppBar(
              elevation: 10,
              expandedHeight: MediaQuery.of(context).size.height * 0.4,
              backgroundColor: AppColors.darkGreen,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IconButton(
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    icon: SvgPicture.asset(
                      AppImageAsset.menue,
                      color: Colors.white,
                      height: 18,
                    ),
                  ),
                ),
              ],
              floating: true,
              pinned: true,
              flexibleSpace: LayoutBuilder(
                builder: (context, bc) {
                  double size = min(bc.constrainHeight(), 120);
                  return FlexibleSpaceBar(
                    centerTitle: true,
                    background: Center(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: NetworkImage(
                                  controllerUni.images[index],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Color(0xff536841).withOpacity(0.8),
                                  Colors.black.withOpacity(0),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                myservice.prefs.getString('lang') == 'ar'
                                    ? controllerUni.nameAr[index]
                                    : controllerUni.nameEn[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "fontFamily".tr,
                                      color: Colors.white,
                                      fontSize: 32,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }),
          SliverFillViewport(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 30),
                  child: Text(
                    'randomContent'.tr,
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontFamily: "fontFamily".tr,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
