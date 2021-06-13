import 'package:digital_academy/commons/buttons/rounded_filled_button.dart';
import 'package:digital_academy/commons/buttons/text_button.dart';
import 'package:digital_academy/constants/image_constants.dart';
import 'package:digital_academy/constants/theme_constants.dart';
import 'package:digital_academy/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginComponent extends StatelessWidget {
  const LoginComponent({Key? key}) : super(key: key);

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
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: ThemeConstants.fontSize30,
                                  fontFamily: ThemeConstants.FONT_FAMILY,
                                  color: ThemeConstants.WHITE_COLOR),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: ThemeConstants.height379,
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
                              height: ThemeConstants.height78,
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
                                  buttonName: 'Login',
                                  onPressed: () {
                                    Get.toNamed(Routes.OTP,
                                        arguments: {'from': 'LOGIN'});
                                  }),
                            ),
                            SizedBox(
                              height: ThemeConstants.height35,
                            ),
                            Center(
                              child: TextButtonWidget(
                                buttonName: 'Sign Up',
                                onPressed: () {
                                  Get.toNamed(Routes.SIGNUP);
                                },
                              ),
                            )
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
