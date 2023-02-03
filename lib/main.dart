import 'package:Joswor/binding/initialbindings.dart';
import 'package:Joswor/controller/onBoarding_Controller.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/contstant/fonts.dart';
import 'package:Joswor/core/functions/alertTextApp.dart';
import 'package:Joswor/core/localization/changeLocal.dart';
import 'package:Joswor/core/localization/translation.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/routs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'test.dart';
import 'view/screen/language.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await initializeServices();
  runApp(MyApp());
  FlutterNativeSplash.remove();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return WillPopScope(
      onWillPop: () async {
        return alertExtitApp();
      },
      child: GetMaterialApp(
        title: 'Joswor',
        translations: MyTranslation(),
        debugShowCheckedModeBanner: false,
        locale: controller.language,
        theme: ThemeData(
          primarySwatch: Colors.amber,
          fontFamily: AppFonts().font,
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 24,
                fontFamily: AppFonts().font,
                fontWeight: FontWeight.w600,
                color: AppColors.darkBlack),
            headline2: TextStyle(
                fontSize: 26,
                fontFamily: AppFonts().font,
                fontWeight: FontWeight.w600,
                color: AppColors.darkBlack),
            bodyText1: TextStyle(
              height: 2,
              fontSize: 16,
              fontFamily: AppFonts().font,
              fontWeight: FontWeight.w500,
              color: AppColors.lightBlack,
            ),
          ),
        ),
        // home: Language(),
        // routes: route,
        initialBinding: IntialBindings(),
        getPages: routes,
      ),
    );
  }
}
