import 'package:Joswor/controller/Carousels/CarouselOffersControlller.dart';
import 'package:Joswor/controller/Carousels/CarouselUniversityControlller.dart';
import 'package:Joswor/controller/onBoarding_Controller.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarouselOffers extends StatelessWidget {
  @override
  CarouselOffersControllerImpl controller =
      Get.put(CarouselOffersControllerImpl());
  MyService myservice = Get.find();

  Widget build(BuildContext context) {
    return GetBuilder<CarouselOffersControllerImpl>(builder: (controller) {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: PageView.builder(
                  itemCount: controller.images.length,
                  pageSnapping: true,
                  controller: controller.pageController,
                  onPageChanged: (page) {
                    controller.onPageChanged(page);
                  },
                  itemBuilder: (context, pagePosition) {
                    bool active = pagePosition == controller.activePage;
                    return Stack(
                      children: [
                        slider(
                            controller.images, pagePosition, active, context),
                      ],
                    );
                  }),
            ),
          ),
        ],
      );
    });
  }
}

// Animated container widget
AnimatedContainer slider(images, pagePosition, active, context) {
  CarouselOffersControllerImpl controller =
      Get.put(CarouselOffersControllerImpl());
  MyService myservice = Get.find();

  double margin = active ? 2 : 20;

  return AnimatedContainer(
    duration: Duration(milliseconds: 400),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    child: Container(
      child: Stack(
        children: [
          myservice.prefs.getString('lang') == 'ar'
              ? Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                          color: Color(0xff536841),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(images[pagePosition]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                colors: [
                                  Color(0xff536841).withOpacity(0.6),
                                  Colors.black.withOpacity(0),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(images[pagePosition]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                colors: [
                                  Color(0xff536841).withOpacity(0.6),
                                  Colors.black.withOpacity(0),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                          color: Color(0xff536841),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
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
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ],
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
  );
}

// Widget for image animation while sliding carousel
imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);
      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.network(images[pagePosition]),
    ),
  );
}
