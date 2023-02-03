import 'package:Joswor/controller/Carousels/CarouselUniversityControlller.dart';
import 'package:Joswor/controller/onBoarding_Controller.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarouselUniversity extends StatelessWidget {
  @override
  CarouselUniversityControllerImpl controller =
      Get.put(CarouselUniversityControllerImpl());
  MyService myservice = Get.find();

  Widget build(BuildContext context) {
    return GetBuilder<CarouselUniversityControllerImpl>(builder: (controller) {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: PageView.builder(
                  itemCount: controller.images.length,
                  pageSnapping: true,
                  controller: controller.pageController,
                  onPageChanged: (page) {
                    controller.onPageChanged(page);
                  },
                  itemBuilder: (context, pagePosition) {
                    bool active = pagePosition == controller.activePage;
                    return slider(
                        controller.images, pagePosition, active, context);
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
  CarouselUniversityControllerImpl controller =
      Get.put(CarouselUniversityControllerImpl());
  MyService myservice = Get.find();

  double margin = active ? 2 : 20;

  return AnimatedContainer(
    duration: Duration(milliseconds: 750),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(images[pagePosition]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
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
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
      ],
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
        width: 300,
        height: 300,
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
