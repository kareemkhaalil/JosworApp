import 'package:Joswor/controller/test_controller.dart';
import 'package:Joswor/core/class/handlingDataVeiw.dart';
import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TextController());
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Test'),
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      body: GetBuilder<TextController>(builder: (controller) {
        return HandlingDataVeiw(
          widget: ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context, index) {
              return Center(
                child: Text(
                    "${controller.data[index]['users_id']} \n ${controller.data[index]['users_name']} \n ${controller.data[index]['users_email']} "),
              );
            },
          ),
          statusRequest: controller.statusRequest,
        );
      }),
    );
  }
}
