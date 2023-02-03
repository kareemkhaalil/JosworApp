import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyService extends GetxService {
  late SharedPreferences prefs;

  Future<MyService> init() async {
    prefs = await SharedPreferences.getInstance();
    return this;
  }
}

initializeServices() async {
  await Get.putAsync(() => MyService().init());
}
