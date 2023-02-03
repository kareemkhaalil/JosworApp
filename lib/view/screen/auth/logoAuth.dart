import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  final double? height;
  const LogoAuth({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageAsset.logo,
      height: height,
    );
  }
}
