import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:Joswor/core/contstant/svg.dart';
import 'package:Joswor/view/widget/pages/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'core/functions/checkInternet.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var res;
  initialData() async {
    res = await checkInternet();
    print(res);
  }

  @override
  void initState() {
    initialData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkGreen,
        elevation: 18,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
            icon: SvgsWidget().menue,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: GridView.count(
              physics: BouncingScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              children: List.generate(images.length, (index) {
                return GestureDetector(
                  onTap: () {
                    print(index);
                  },
                  child: CardBlock(pagePosition: index),
                );
              }),
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
    );
    //   Scaffold(
    //     body: Padding(
    //   padding: const EdgeInsets.only(top: 50),
    //   child: Stack(
    //     children: [
    //       GridView.builder(
    //         physics: BouncingScrollPhysics(),
    //         primary: false,
    //         padding: const EdgeInsets.all(20),
    //         itemCount: 15,
    //         itemBuilder: (BuildContext context, int index) {
    //           return Container(
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.only(
    //                 topLeft: Radius.circular(20),
    //                 bottomLeft: Radius.circular(20),
    //               ),
    //             ),
    //             child: Image.network(images[1], fit: BoxFit.cover),
    //           );
    //         },
    //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //           crossAxisCount: 2,
    //           childAspectRatio: 1.0,
    //           crossAxisSpacing: 10.0,
    //           mainAxisSpacing: 10.0,
    //         ),
    //       ),
    //       Align(
    //         alignment: Alignment.bottomCenter,
    //         child: Container(
    //           height: MediaQuery.of(context).size.width * 0.2,
    //           decoration: BoxDecoration(
    //             gradient: LinearGradient(
    //               begin: Alignment.bottomCenter,
    //               end: Alignment.topCenter,
    //               colors: [
    //                 Color(0xff536841),
    //                 Colors.white.withOpacity(0.2),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // ));
  }
}

List<String> images = [
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/1-1.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/5-1.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/8.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/3-1-768x512.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/1-1.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/5-1.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/8.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/3-1-768x512.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/1-1.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/5-1.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/8.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/3-1-768x512.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/1-1.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/5-1.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/8.jpg',
  'https://aljawaz.com/en/wp-content/uploads/sites/2/2020/03/3-1-768x512.jpg',
];
