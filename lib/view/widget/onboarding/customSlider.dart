import 'package:Joswor/core/contstant/routs.dart';
import 'package:Joswor/core/localization/changeLocal.dart';
import 'package:Joswor/data/datasource/static/static.dart';
import 'package:Joswor/view/screen/auth/login.dart';
import 'package:Joswor/view/screen/auth/signUp.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onBoarding_Controller.dart';

class CustomSliderOnBoarding extends StatelessWidget {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    OnBoardingControllerImpl controller = Get.put(OnBoardingControllerImpl());
    return Stack(
      children: <Widget>[
        ConcentricPageView(
          colors: <Color>[Colors.white, Color(0xffF2D472), Color(0xff536841)],
          duration: const Duration(seconds: 1),
          radius: controller.currentPage == 0 || controller.currentPage == 1
              ? 50
              : controller.currentPage == 2
                  ? 0
                  : 300,
          onChange: (int index) {
            print(index);
            (context as Element).reassemble();
            controller.onPageChanged(index);
            (context as Element).reassemble();
            print(index);
          },
          onFinish: () {
            controller.onClose();
            // (context as Element).reassemble();
            // if (controller.isLogin == true) {
            //   controller.goToLogin();
            // } else if (controller.isSignUp == true) {
            //   controller.goToSignUp();
            // } else {
            //   print("finish");
            // }
            // (context as Element).reassemble();
          },
          pageController: controller.pageController,
          itemCount: OnBoardingList.length,
          itemBuilder: (i, context) => Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(80),
                        bottomRight: Radius.circular(80),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 4,
                          blurRadius: 6,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        OnBoardingList[i].image.toString(),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: i == 0
                    ? MediaQuery.of(context).size.height * 0.06
                    : i == 1
                        ? MediaQuery.of(context).size.height * 0.006
                        : MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text(
                  OnBoardingList[i].title.toString(),
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontFamily: "fontFamily".tr,
                        color: i == 0
                            ? Color(0xff536841)
                            : i == 1
                                ? Color(0xff353b48)
                                : Colors.white,
                      ),
                ),
              ),
              SizedBox(
                height: i == 0
                    ? MediaQuery.of(context).size.height * 0.042
                    : i == 1
                        ? MediaQuery.of(context).size.height * 0.04
                        : MediaQuery.of(context).size.height * 0.006,
              ),
              i == 0 || i == 1
                  ? Icon(
                      Icons.arrow_forward_ios,
                      color: i == 0
                          ? Colors.white
                          : i == 1
                              ? Color(0xffF2D472)
                              : Color(0xff536841),
                    )
                  : SizedBox(
                      height: 0,
                    ),
            ],
          ),
        ),
        controller.currentPage == 0 || controller.currentPage == 1
            ? Container()
            : controller.currentPage == 2
                ? Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.7,
                        left: 20,
                        right: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Get.off(() => Login(), //next page class
                                  transition:
                                      Transition.leftToRight //transition effect
                                  );
                              controller.pageController.dispose();
                              // Get.to(() => , //next page class
                              //     //duration of transitions, default 1 sec
                              //     transition:
                              //         Transition.leftToRight //transition effect
                              //     );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: MediaQuery.of(context).size.height * 0.07,
                              decoration: BoxDecoration(
                                  color: Color(0xffF2D472),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xffF2D472).withAlpha(100),
                                      blurRadius: 10.0,
                                      spreadRadius: 5.0,
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                    ),
                                  ]),
                              child: Center(
                                child: Text(
                                  "login".tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: "fontFamily".tr,
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          MaterialButton(
                            onPressed: () {
                              Get.to(() => SignUp(), //next page class
                                  transition:
                                      Transition.leftToRight //transition effect
                                  );
                              controller.pageController.dispose();
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: MediaQuery.of(context).size.height * 0.07,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffF2D472),
                                    width: 5,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xffF2D472).withAlpha(100),
                                      blurRadius: 10.0,
                                      spreadRadius: 5.0,
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                    ),
                                  ]),
                              child: Center(
                                child: Text(
                                  "signUp".tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: "fontFamily".tr,
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Container()
      ],
    );
  }
}
