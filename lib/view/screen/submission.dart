import 'package:Joswor/controller/SubmissionController.dart';
import 'package:Joswor/core/contstant/color.dart';
import 'package:Joswor/core/contstant/imageAssets.dart';
import 'package:Joswor/core/contstant/jowsor_icons.dart';
import 'package:Joswor/core/functions/alertTextApp.dart';
import 'package:Joswor/core/functions/validInput.dart';
import 'package:Joswor/core/services/services.dart';
import 'package:Joswor/view/widget/customTextFeildSubmission.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:csc_picker/csc_picker.dart';

class Submission extends StatelessWidget {
  const Submission({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSize = 20;
    MyService myservice = Get.find<MyService>();
    AlignmentGeometry alignment = myservice.prefs.getString('lang') == 'ar'
        ? Alignment.centerLeft
        : Alignment.centerRight;
    SubmissionControllerImpl controller = Get.put(SubmissionControllerImpl());
    return WillPopScope(
      onWillPop: () async {
        return alertExtitApp();
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.25,
                    child: Center(
                      child: Image.asset(
                        AppImageAsset.logo,
                        height: MediaQuery.of(context).size.height * 0.22,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                          ),
                          border:
                              Border.all(width: 0, color: AppColors.darkGreen),
                          color: AppColors.darkGreen,
                        ),
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.225,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 30,
                          ),
                          child: Stack(
                            children: [
                              Icon(
                                Jowsor.submission,
                                color: AppColors.button,
                                size: 44,
                                shadows: [
                                  BoxShadow(
                                    color: AppColors.button,
                                    blurRadius: 5,
                                    spreadRadius: 10,
                                  ),
                                ],
                              ),
                              Icon(
                                Jowsor.submission,
                                color: AppColors.button,
                                size: 45,
                                shadows: [
                                  BoxShadow(
                                    color: AppColors.button,
                                    blurRadius: 10,
                                    spreadRadius: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 0, color: AppColors.darkGreen),
                          color: AppColors.darkGreen,
                        ),
                        height: MediaQuery.of(context).size.height * 2.3,
                        width: MediaQuery.of(context).size.width,
                      ),
                      // submission
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 0, color: AppColors.button),
                          color: AppColors.button,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              100,
                            ),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height * 2.3,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.06,
                            vertical: MediaQuery.of(context).size.height * 0.04,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              // name
                              Align(
                                alignment: alignment,
                                child: Text(
                                  'fullname'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.darkGreen,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              CustomTextFeildSubmission(
                                  validator: (val) {
                                    return validInput(val!, 5, 100, 'email');
                                  },
                                  isPassword: false,
                                  hintText: 'hintFullname'.tr,
                                  suffixIcon: Icon(
                                    Icons.person_rounded,
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  labelText: 'email'.tr,
                                  controller: controller.nameController),
                              // email
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Align(
                                alignment: alignment,
                                child: Text(
                                  'email'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.darkGreen,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              CustomTextFeildSubmission(
                                validator: (val) {
                                  return validInput(val!, 5, 100, 'email');
                                },
                                isPassword: false,
                                hintText: 'hintEmailAdd'.tr,
                                suffixIcon: Icon(
                                  Icons.email_outlined,
                                ),
                                keyboardType: TextInputType.name,
                                labelText: 'email'.tr,
                                controller: controller.emailController,
                              ),
                              // phone
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Align(
                                alignment: alignment,
                                child: Text(
                                  'phone'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.darkGreen,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              CustomTextFeildSubmission(
                                validator: (val) {
                                  return validInput(val!, 5, 100, 'email');
                                },
                                isPassword: false,
                                hintText: 'hintPhoneNum'.tr,
                                suffixIcon: Icon(
                                  Icons.phone_rounded,
                                ),
                                keyboardType: TextInputType.phone,
                                labelText: 'email'.tr,
                                controller: controller.phoneController,
                              ),
                              // date
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Align(
                                alignment: alignment,
                                child: Text(
                                  'date'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.darkGreen,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              CustomTextFeildSubmission(
                                validator: (val) {
                                  return validInput(val!, 5, 100, 'email');
                                },
                                isPassword: false,
                                hintText: 'hintDate'.tr,
                                suffixIcon: Icon(
                                  Icons.date_range_rounded,
                                ),
                                keyboardType: TextInputType.datetime,
                                controller: controller.dateController,
                              ),
                              // nationality
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Align(
                                alignment: alignment,
                                child: Text(
                                  'nationality'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.darkGreen,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              CustomTextFeildSubmission(
                                readOnly: false,
                                validator: (val) {
                                  return validInput(val!, 5, 100, 'email');
                                },
                                isPassword: false,
                                hintText: 'hintNationality'.tr,
                                suffixIcon: Icon(
                                  Icons.maps_home_work_rounded,
                                ),
                                keyboardType: TextInputType.name,
                                controller: controller.nationalityController,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.02,
                              ),
                              CSCPicker(
                                showStates: false,
                                showCities: false,
                                flagState: CountryFlag.SHOW_IN_DROP_DOWN_ONLY,
                                dropdownDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      10,
                                    ),
                                  ),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: AppColors.darkGreen,
                                    width: 2,
                                  ),
                                ),
                                disabledDropdownDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      10,
                                    ),
                                  ),
                                  color: Colors.grey.shade300,
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                    width: 1,
                                  ),
                                ),
                                countrySearchPlaceholder: "Country",

                                ///labels for dropdown
                                countryDropdownLabel: 'Select Country'.tr,

                                ///Default Country
                                //defaultCountry: DefaultCountry.Turkey,

                                //disableCountry: true,
                                ///selected item style [OPTIONAL PARAMETER]
                                selectedItemStyle: TextStyle(
                                  color: AppColors.darkGreen,
                                  fontSize: 14,
                                ),

                                ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                                dropdownHeadingStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),

                                ///DropdownDialog Item style [OPTIONAL PARAMETER]
                                dropdownItemStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),

                                ///Dialog box radius [OPTIONAL PARAMETER]
                                dropdownDialogRadius: 25.0,

                                ///Search bar radius [OPTIONAL PARAMETER]
                                searchBarRadius: 10.0,

                                ///triggers once country selected in dropdown
                                onCountryChanged: (value) {
                                  controller.onNationalityValue(value);
                                },
                                onStateChanged: (value) {
                                  controller.onStateValue(value);
                                },
                                onCityChanged: (value) {
                                  controller.onCityValue(value);
                                },
                              ),
                              // country
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Align(
                                alignment: alignment,
                                child: Text(
                                  'country'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.darkGreen,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              CustomTextFeildSubmission(
                                readOnly: false,
                                validator: (val) {
                                  return validInput(val!, 5, 100, 'email');
                                },
                                isPassword: false,
                                hintText: 'hintCountry'.tr,
                                suffixIcon: Icon(
                                  Icons.map,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                labelText: 'email'.tr,
                                controller: controller.countryController,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.02,
                              ),
                              CSCPicker(
                                showStates: false,
                                showCities: false,
                                flagState: CountryFlag.SHOW_IN_DROP_DOWN_ONLY,

                                ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
                                dropdownDecoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: AppColors.darkGreen,
                                    width: 2,
                                  ),
                                ),

                                ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
                                disabledDropdownDecoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.grey.shade300,
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                    width: 1,
                                  ),
                                ),

                                ///placeholders for dropdown search field
                                countrySearchPlaceholder: "Country",

                                ///labels for dropdown
                                countryDropdownLabel: 'Select Country'.tr,

                                ///Default Country
                                //defaultCountry: DefaultCountry.Turkey,

                                ///Disable country dropdown (Note: use it with default country)
                                //disableCountry: true,
                                ///selected item style [OPTIONAL PARAMETER]
                                selectedItemStyle: TextStyle(
                                  color: AppColors.darkGreen,
                                  fontSize: 14,
                                ),

                                ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                                dropdownHeadingStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),

                                ///DropdownDialog Item style [OPTIONAL PARAMETER]
                                dropdownItemStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),

                                ///Dialog box radius [OPTIONAL PARAMETER]
                                dropdownDialogRadius: 25.0,

                                ///Search bar radius [OPTIONAL PARAMETER]
                                searchBarRadius: 10.0,

                                ///triggers once country selected in dropdown
                                onCountryChanged: (value) {
                                  controller.onCountryValue(value);
                                },
                                onStateChanged: (value) {
                                  controller.onStateValue(value);
                                },
                                onCityChanged: (value) {
                                  controller.onCityValue(value);
                                },
                              ),
                              // degree
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Align(
                                alignment: alignment,
                                child: Text(
                                  'degree'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.darkGreen,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              CustomTextFeildSubmission(
                                validator: (val) {
                                  return validInput(val!, 5, 100, 'email');
                                },
                                isPassword: false,
                                hintText: 'hintDegree'.tr,
                                suffixIcon: Icon(
                                  Icons.school_rounded,
                                ),
                                keyboardType: TextInputType.emailAddress,
                                labelText: 'email'.tr,
                                controller: controller.degreeController,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.02,
                              ),
                              // personal photo
                              Align(
                                alignment: alignment,
                                child: Text(
                                  'photo'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.darkGreen,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: AppColors.darkGreen,
                                    width: 2,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (controller.result != null)
                                      Row(
                                        children: [
                                          const Text(
                                            'Selected file:',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: controller
                                                    .result?.files.length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              return Text(
                                                controller.result?.files[index]
                                                        .name ??
                                                    '',
                                                style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                    Center(
                                      child: GestureDetector(
                                        onTap: () async {
                                          controller.pickFile();
                                        },
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.1,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: AppColors.darkGreen,
                                          ),
                                          child: Icon(
                                            Icons.upload_rounded,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              // passport
                              Align(
                                alignment: alignment,
                                child: Text(
                                  'passport'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.darkGreen,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: AppColors.darkGreen,
                                    width: 2,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (controller.result != null)
                                      Row(
                                        children: [
                                          const Text(
                                            'Selected file:',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: controller
                                                    .result?.files.length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              return Text(
                                                controller.result?.files[index]
                                                        .name ??
                                                    '',
                                                style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                    Center(
                                      child: GestureDetector(
                                        onTap: () async {
                                          controller.pickFile();
                                        },
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.1,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: AppColors.darkGreen,
                                          ),
                                          child: Icon(
                                            Icons.upload_rounded,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              // transcript
                              Align(
                                alignment: alignment,
                                child: Text(
                                  'transcript'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.darkGreen,
                                      ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: AppColors.darkGreen,
                                    width: 2,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (controller.result != null)
                                      Row(
                                        children: [
                                          const Text(
                                            'Selected file:',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: controller
                                                    .result?.files.length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              return Text(
                                                controller.result?.files[index]
                                                        .name ??
                                                    '',
                                                style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                    Center(
                                      child: GestureDetector(
                                        onTap: () async {
                                          controller.pickFile();
                                        },
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.1,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: AppColors.darkGreen,
                                          ),
                                          child: Icon(
                                            Icons.upload_rounded,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              // button
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.darkGreen,
                                ),
                                child: Text(
                                  'submit'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontFamily: "fontFamily".tr,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w800,
                                        color: AppColors.button,
                                      ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff536841).withOpacity(0.3),
                      Colors.black.withOpacity(0),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xff536841).withOpacity(0.2),
                      Colors.black.withOpacity(0),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
