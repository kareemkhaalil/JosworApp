import 'package:Joswor/core/contstant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormFeild extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final Icon? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?) validator;
  final bool? isPassword;
  final Function()? onTap;

  const CustomTextFormFeild({
    Key? key,
    this.hintText,
    this.labelText,
    required this.controller,
    this.keyboardType,
    required this.validator,
    this.suffixIcon,
    required this.obscureText,
    this.isPassword,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontFamily: "fontFamily".tr,
              fontSize: 15,
              color: AppColors.lightBlack.withOpacity(0.5),
            ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.darkBlack,
          ),
        ),
        focusColor: AppColors.button,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        label: Container(
          margin: const EdgeInsets.symmetric(horizontal: 7),
          child: Text(
            labelText!,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontFamily: "fontFamily".tr,
                ),
          ),
        ),
        suffixIcon: InkWell(onTap: onTap, child: suffixIcon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
