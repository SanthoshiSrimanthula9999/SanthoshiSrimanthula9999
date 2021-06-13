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
                  Image.asset(ImageConstants.LOGO),
                  SizedBox(
                    height: ThemeConstants.height51,
                  ),
                  Container(
                    height: ThemeConstants.height113,
                    decoration: BoxDecoration(
                      color: ThemeConstants.PRIMARY_COLOR,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0)),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            'SIGNUP',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: ThemeConstants.fontSize30,
                                fontFamily: ThemeConstants.FONT_FAMILY,
                                color: ThemeConstants.WHITE_COLOR),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: ThemeConstants.height382,
                child: Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: ThemeConstants.WHITE_COLOR,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0)),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: ThemeConstants.height43,
                            ),
                            Text(
                              'Full Name',
                              style: TextStyle(
                                  fontFamily: ThemeConstants.FONT_FAMILY,
                                  fontStyle: FontStyle.normal,
                                  fontSize: ThemeConstants.fontSize22,
                                  fontWeight: FontWeight.w300,
                                  color: ThemeConstants.APP_GREY_COLOR),
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
                                    fontFamily: ThemeConstants.FONT_FAMILY,
                                    fontStyle: FontStyle.normal,
                                    fontSize: ThemeConstants.fontSize22,
                                    fontWeight: FontWeight.w300,
                                    color: ThemeConstants.APP_GREY_COLOR),
                              ),
                            ),
                            SizedBox(
                              height: ThemeConstants.height34,
                            ),
                            Text(
                              'Mobile Number',
                              style: TextStyle(
                                  fontFamily: ThemeConstants.FONT_FAMILY,
                                  fontStyle: FontStyle.normal,
                                  fontSize: ThemeConstants.fontSize22,
                                  fontWeight: FontWeight.w300,
                                  color: ThemeConstants.APP_GREY_COLOR),
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
                                    fontFamily: ThemeConstants.FONT_FAMILY,
                                    fontStyle: FontStyle.normal,
                                    fontSize: ThemeConstants.fontSize22,
                                    fontWeight: FontWeight.w300,
                                    color: ThemeConstants.APP_GREY_COLOR),
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
                                        arguments: {'from': 'SIGNUP'});
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("By Signing Up you agree with our ",
                                    style: TextStyle(
                                      fontFamily: ThemeConstants.FONT_FAMILY,
                                      fontStyle: FontStyle.normal,
                                      fontSize: ThemeConstants.fontSize18,
                                      fontWeight: FontWeight.w300,
                                    )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButtonWidget(
                                        buttonName: " Privacy Policy",
                                        onPressed: () {}),
                                    Text(" and",
                                        style: TextStyle(
                                          fontFamily:
                                              ThemeConstants.FONT_FAMILY,
                                          fontStyle: FontStyle.normal,
                                          fontSize: ThemeConstants.fontSize18,
                                          fontWeight: FontWeight.w300,
                                        )),
                                    TextButtonWidget(
                                        buttonName: " Terms & Conditions",
                                        onPressed: () {}),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
