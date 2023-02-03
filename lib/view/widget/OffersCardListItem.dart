import 'package:Joswor/controller/Carousels/CarouselOffersControlller.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OffersCardListItem extends StatelessWidget {
  var pagePosition;
  OffersCardListItem({Key? key, this.pagePosition}) : super(key: key);
  CarouselOffersControllerImpl? controller =
      Get.put(CarouselOffersControllerImpl());
  @override
  Widget build(BuildContext context) {
    MyService myservice = Get.find();
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.95,
            child: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.darkGreen,
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: Offset(0, 0), // Shadow position
                      ),
                    ],
                  ),
                ),
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          controller!.images[pagePosition]),
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        controller!.images[pagePosition],
                                      ),
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
                          ? controller!.nameAr[pagePosition]
                          : controller!.nameEn[pagePosition],
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
        ],
      ),
    );
  }
}
