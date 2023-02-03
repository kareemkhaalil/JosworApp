import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:flutter/material.dart';

class CustomSocialMediaButton extends StatelessWidget {
  const CustomSocialMediaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      overlayColor: MaterialStateProperty.all(AppColors.button),
      onTap: () {
        print('facebook');
      },
      child: PhysicalModel(
        color: AppColors.darkBlack.withOpacity(0.2),
        elevation: 5,
        shadowColor: AppColors.darkBlack.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.button,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              AppImageAsset.facebookIcon,
              fit: BoxFit.contain,
            ),
          ),
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
