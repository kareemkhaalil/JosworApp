import 'package:Joswor/controller/ArcPageController.dart';
import 'package:Joswor/controller/Carousels/CarouselUniversityControlller.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardBlock extends StatelessWidget {
  ArcPageControllerImpl? controller = Get.put(ArcPageControllerImpl());
  CarouselUniversityControllerImpl? controller2 =
      Get.put(CarouselUniversityControllerImpl());
  var pagePosition;
  CardBlock({
    Key? key,
    this.pagePosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyService myservice = Get.find();
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(controller!.images[pagePosition]),
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
                      ? Alignment.bottomLeft
                      : Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Text(
                      myservice.prefs.getString('lang') == 'ar'
                          ? controller2!.nameAr[pagePosition]
                          : controller2!.nameEn[pagePosition],
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontFamily: "fontFamily".tr,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
