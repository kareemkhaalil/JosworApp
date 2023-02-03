import 'package:Joswor/controller/Carousels/CarouselArticlesControlller.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArcCardListItem extends StatelessWidget {
  var pagePosition;

  CarouselArticlesControllerImpl controller =
      Get.put(CarouselArticlesControllerImpl());
  ArcCardListItem({Key? key, this.pagePosition}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MyService myservice = Get.find();
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.darkGreen,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 0), // Shadow position
                  ),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: NetworkImage(controller.images[pagePosition]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0xff536841).withOpacity(0.9),
                          Colors.black.withOpacity(0),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: myservice.prefs.getString('lang') == 'ar'
                        ? Alignment.bottomRight
                        : Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Text(
                        myservice.prefs.getString('lang') == 'ar'
                            ? controller.nameAr[pagePosition]
                            : controller.nameEn[pagePosition],
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              fontFamily: "fontFamily".tr,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
