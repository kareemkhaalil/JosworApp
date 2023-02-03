import 'package:Joswor/core/contstant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFeildSubmission extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final Icon? suffixIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?) validator;
  final bool? isPassword;
  final Function()? onTap;
  final String? initialValue;
  final bool? readOnly;

  const CustomTextFeildSubmission({
    Key? key,
    this.hintText,
    this.labelText,
    required this.controller,
    this.keyboardType,
    required this.validator,
    this.suffixIcon,
    this.isPassword,
    this.onTap,
    this.initialValue,
    this.readOnly,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      initialValue: initialValue,
      enabled: readOnly,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(30),
          ),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontFamily: "fontFamily".tr,
              fontSize: 15,
              color: AppColors.lightBlack.withOpacity(0.5),
            ),
        focusColor: AppColors.darkGreen,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(30),
          ),
          borderSide: BorderSide(
            color: AppColors.darkGreen,
            width: 2,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        suffixIcon: InkWell(onTap: onTap, child: suffixIcon),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(
              20,
            ),
          ),
        ),
      ),
    );
  }
}
