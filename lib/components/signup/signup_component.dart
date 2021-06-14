import 'package:digital_academy/commons/buttons/rounded_filled_button.dart';
import 'package:digital_academy/commons/buttons/text_button.dart';
import 'package:digital_academy/constants/image_constants.dart';
import 'package:digital_academy/constants/theme_constants.dart';
import 'package:digital_academy/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpComponent extends StatelessWidget {
  const SignUpComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConstants.WHITE_COLOR,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: Get.height,
              child: Column(
                children: [
                  SizedBox(
                    height: ThemeConstants.height69,
                  ),
                  Image.asset(
                    ImageConstants.LOGO,
                    height: ThemeConstants.height199,
                  ),
                  SizedBox(
                    height: ThemeConstants.height37,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ThemeConstants.PRIMARY_COLOR,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 14, top: 14),
                          child: Center(
                            child: Text(
                              'SIGNUP',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: ThemeConstants.fontSize30,
                                  fontFamily: ThemeConstants.FONT_FAMILY,
                                  color: ThemeConstants.WHITE_COLOR),
                            ),
                          ),
                        ),
                        Container(
                          width: Get.width,
                          // height: 517,
                          decoration: BoxDecoration(
                            color: ThemeConstants.WHITE_COLOR,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: ThemeConstants.height33,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Full Name',
                                          style: TextStyle(
                                              fontFamily:
                                                  ThemeConstants.FONT_FAMILY,
                                              fontStyle: FontStyle.normal,
                                              fontSize:
                                                  ThemeConstants.fontSize22,
                                              fontWeight: FontWeight.w300,
                                              color: ThemeConstants
                                                  .APP_GREY_COLOR),
                                        ),
                                        TextFormField(
                                          maxLength: 100,
                                          keyboardType: TextInputType.name,
                                          style: TextStyle(
                                            fontStyle: FontStyle.normal,
                                            fontSize: ThemeConstants.fontSize22,
                                          ),
                                          decoration: InputDecoration(
                                            isDense: true,
                                            hintText: 'Enter Full Name',
                                            counterText: '',
                                            hintStyle: TextStyle(
                                                fontFamily:
                                                    ThemeConstants.FONT_FAMILY,
                                                fontStyle: FontStyle.normal,
                                                fontSize:
                                                    ThemeConstants.fontSize22,
                                                fontWeight: FontWeight.w300,
                                                color: ThemeConstants
                                                    .APP_GREY_COLOR),
                                          ),
                                        ),
                                        SizedBox(
                                          height: ThemeConstants.height34,
                                        ),
                                        Text(
                                          'Mobile Number',
                                          style: TextStyle(
                                              fontFamily:
                                                  ThemeConstants.FONT_FAMILY,
                                              fontStyle: FontStyle.normal,
                                              fontSize:
                                                  ThemeConstants.fontSize22,
                                              fontWeight: FontWeight.w300,
                                              color: ThemeConstants
                                                  .APP_GREY_COLOR),
                                        ),
                                        TextFormField(
                                          maxLength: 10,
                                          keyboardType: TextInputType.phone,
                                          style: TextStyle(
                                            fontStyle: FontStyle.normal,
                                            fontSize: ThemeConstants.fontSize22,
                                          ),
                                          decoration: InputDecoration(
                                            isDense: true,
                                            hintText: 'Enter Mobile Number',
                                            counterText: '',
                                            hintStyle: TextStyle(
                                                fontFamily:
                                                    ThemeConstants.FONT_FAMILY,
                                                fontStyle: FontStyle.normal,
                                                fontSize:
                                                    ThemeConstants.fontSize22,
                                                fontWeight: FontWeight.w300,
                                                color: ThemeConstants
                                                    .APP_GREY_COLOR),
                                          ),
                                        ),
                                        SizedBox(
                                          height: ThemeConstants.height45,
                                        ),
                                        Container(
                                          width: Get.width,
                                          child: RoundedFilledButtonWidget(
                                              buttonName: 'Sign Up',
                                              onPressed: () {
                                                Get.toNamed(Routes.OTP,
                                                    arguments: {
                                                      'from': 'SIGNUP'
                                                    });
                                              }),
                                        ),
                                        SizedBox(
                                          height: ThemeConstants.height35,
                                        ),
                                        Center(
                                          child: TextButtonWidget(
                                            buttonName: 'Login',
                                            onPressed: () {
                                              Get.toNamed(Routes.LOGIN);
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          height: ThemeConstants.height33,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                                "By Signing Up you agree with our ",
                                                style: TextStyle(
                                                  fontFamily: ThemeConstants
                                                      .FONT_FAMILY,
                                                  fontStyle: FontStyle.normal,
                                                  fontSize:
                                                      ThemeConstants.fontSize18,
                                                  fontWeight: FontWeight.w300,
                                                )),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                TextButtonWidget(
                                                    buttonName:
                                                        " Privacy Policy",
                                                    onPressed: () {}),
                                                Text(" and",
                                                    style: TextStyle(
                                                      fontFamily: ThemeConstants
                                                          .FONT_FAMILY,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontSize: ThemeConstants
                                                          .fontSize18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    )),
                                                TextButtonWidget(
                                                    buttonName:
                                                        " Terms & Conditions",
                                                    onPressed: () {}),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
