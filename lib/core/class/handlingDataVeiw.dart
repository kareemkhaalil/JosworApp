import 'package:Joswor/core/class/statusRequest.dart';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataVeiw extends StatelessWidget {
  final Widget widget;
  final StatusRequest statusRequest;
  const HandlingDataVeiw({
    Key? key,
    required this.widget,
    required this.statusRequest,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppImageAsset.loading, height: 300, width: 300),
          )
        : statusRequest == StatusRequest.noConnection
            ? Center(
                child: Lottie.asset(
                  AppImageAsset.noConnection,
                ),
              )
            : statusRequest == StatusRequest.serverError
                ? Center(
                    child: Lottie.asset(
                      AppImageAsset.serverError,
                      height: 300,
                      width: 300,
                    ),
                  )
                : statusRequest == StatusRequest.noInternet
                    ? Center(
                        child: Lottie.asset(
                          AppImageAsset.noConnection,
                        ),
                      )
                    : statusRequest == StatusRequest.noData
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'No Data',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Lottie.asset(
                                  AppImageAsset.noData,
                                  repeat: false,
                                  height: 300,
                                  width: 300,
                                ),
                              ],
                            ),
                          )
                        : widget;
  }
}
