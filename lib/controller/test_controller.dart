import 'package:Joswor/core/class/crud.dart';
import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/functions/handlingDataController.dart';
import 'package:Joswor/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  Crude crud = Crude();
  TestData textData = TestData(Get.find());

  late List data = [];
  late StatusRequest statusRequest;
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await textData.getData();
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.noData;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
