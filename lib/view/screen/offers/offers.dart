import 'package:Joswor/controller/Carousels/CarouselOffersControlller.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/functions/alertTextApp.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/test.dart';
import 'package:Joswor/view/screen/offers/offersPage.dart';
import 'package:Joswor/view/widget/OffersCardListItem.dart';
import 'package:Joswor/view/widget/pages/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Offers extends StatelessWidget {
  Offers({Key? key}) : super(key: key);
  CarouselOffersControllerImpl? controller =
      Get.put(CarouselOffersControllerImpl());

  @override
  Widget build(BuildContext context) {
    MyService myservice = Get.find();
    return WillPopScope(
      onWillPop: () async {
        return alertExtitApp();
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView.custom(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Get.to(
                    () => OffersPage(
                      index: index,
                    ),
                  );
                },
                child: OffersCardListItem(
                  pagePosition: index,
                ),
              );
            },
            childCount: controller!.images.length,
          ),
        ),
      ),
    );
  }
}
