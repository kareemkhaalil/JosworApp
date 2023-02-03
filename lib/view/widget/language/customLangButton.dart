import 'package:Joswor/core/contstant/color.dart';
import 'package:flutter/material.dart';

class CustomLangButton extends StatelessWidget {
  const CustomLangButton(
      {Key? key, required this.lang, this.onPressed, this.fontFamily})
      : super(key: key);
  final String? lang;
  final String? fontFamily;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: AppColors.button,
      child: MaterialButton(
        elevation: 0,
        onPressed: onPressed,
        child: Text(
          lang.toString(),
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 12,
                fontFamily: fontFamily,
              ),
        ),
        textColor: AppColors.darkGreen,
      ),
    );
  }
}
