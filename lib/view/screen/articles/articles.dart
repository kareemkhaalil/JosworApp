import 'package:Joswor/controller/ArcPageController.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/functions/alertTextApp.dart';
import 'package:Joswor/view/screen/articles/arcPage.dart';
import 'package:Joswor/view/widget/ArcCardListItem.dart';
import 'package:Joswor/view/widget/pages/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../test.dart';

class Articles extends StatelessWidget {
  Articles({Key? key}) : super(key: key);
  ArcPageControllerImpl? controller = Get.put(ArcPageControllerImpl());

  @override
  Widget build(BuildContext context) {
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
                    () => ArcPage(
                      index: index,
                    ),
                  );
                },
                child: ArcCardListItem(
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
