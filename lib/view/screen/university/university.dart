import 'package:Joswor/controller/Carousels/CarouselUniversityControlller.dart';
import 'package:Joswor/core/functions/alertTextApp.dart';
import 'package:Joswor/view/screen/university/universityPage.dart';
import 'package:Joswor/view/widget/pages/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../test.dart';

class University extends StatelessWidget {
  const University({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CarouselUniversityControllerImpl? controller =
        Get.put(CarouselUniversityControllerImpl());
    return WillPopScope(
      onWillPop: () async {
        return alertExtitApp();
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                children: List.generate(
                  controller!.images.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(
                          () => UniversityPage(
                            index: index,
                          ),
                        );
                      },
                      child: CardBlock(pagePosition: index),
                    );
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff536841).withOpacity(0.9),
                      Colors.transparent.withOpacity(0),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xff536841).withOpacity(0.9),
                      Colors.transparent.withOpacity(0),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
