import 'package:Joswor/core/middleWare/MyMiddleWare.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/view/screen/auth/login.dart';
import 'package:Joswor/view/screen/auth/signUp.dart';
import 'package:Joswor/view/screen/home.dart';
import 'package:Joswor/view/screen/language.dart';
import 'package:Joswor/view/screen/carousels/CarouselUniversity.dart';
import 'package:Joswor/view/widget/pages/card.dart';
import 'package:get/get.dart';
import 'core/contstant/routs.dart';
import 'view/screen/aboutUs.dart';
import 'view/screen/auth/forgetPassword/forgetPassword.dart';
import 'view/screen/auth/forgetPassword/resetPassword.dart';
import 'view/screen/auth/forgetPassword/successResetPasword.dart';
import 'view/screen/auth/successSignUp.dart';
import 'view/screen/auth/forgetPassword/verifyCode.dart';
import 'view/screen/auth/verifyCodeSignUp.dart';
import 'view/screen/homePage.dart';
import 'view/screen/onboarding.dart';
import 'view/screen/splashScreen.dart';
import 'view/widget/test_view.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => SplashScreen(),
    middlewares: [
      MyMiddleWare(),
    ],
  ),
  // GetPage(
  //   name: "/",
  //   page: () => TestView(),
  // ),

  GetPage(
    name: AppRoute.onBoarding,
    page: () => OnBoarding(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoute.login,
    page: () => Login(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoute.signUp,
    page: () => SignUp(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoute.successSignUp,
    page: () => SuccessSighUp(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoute.verifingCodeSignUp,
    page: () => VerifingCodeSignUp(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoute.forgotPassword,
    page: () => ForgetPassword(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoute.verifingCode,
    page: () => VerifingCode(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoute.resetPassword,
    page: () => RessetPassword(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoute.successResetPassword,
    page: () => SuccessResetPasword(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoute.home,
    page: () => Home(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoute.aboutUs,
    page: () => AboutUs(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoute.homePage,
    page: () => HomePage(),
    transition: Transition.fadeIn,
  ),
];
