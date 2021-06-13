import 'package:digital_academy/commons/buttons/rounded_filled_button.dart';
import 'package:digital_academy/commons/buttons/text_button.dart';
import 'package:digital_academy/constants/image_constants.dart';
import 'package:digital_academy/constants/theme_constants.dart';
import 'package:digital_academy/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeComponent extends StatelessWidget {
  const WelcomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: Get.width,
            decoration: BoxDecoration(
              color: ThemeConstants.WHITE_COLOR,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(43.0),
                  bottomRight: Radius.circular(43.0)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: ThemeConstants.height40,
                ),
                Container(
                  height: ThemeConstants.height407,
                  child: Image.asset(
                    ImageConstants.SPLASH_LOGO,
                  ),
                ),
                SizedBox(
                  height: ThemeConstants.height33,
                ),
              ],
            ),
          ),
          SizedBox(height: ThemeConstants.height68),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ThemeConstants.width30),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to',
                    style: TextStyle(
                        fontFamily: ThemeConstants.FONT_FAMILY,
                        fontWeight: FontWeight.w600,
                        fontSize: ThemeConstants.fontSize29),
                  ),
                  Text(
                    'Indian Digital Academy.',
                    style: TextStyle(
                        fontFamily: ThemeConstants.FONT_FAMILY,
                        fontWeight: FontWeight.w600,
                        fontSize: ThemeConstants.fontSize29),
                  ),
                  SizedBox(
                    height: ThemeConstants.height37,
                  ),
                  Container(
                    width: Get.width,
                    child: RoundedFilledButtonWidget(
                        buttonName: 'Sign up',
                        onPressed: () {
                          Get.toNamed(Routes.SIGNUP);
                        }),
                  ),
                  SizedBox(
                    height: ThemeConstants.height47,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already Have an Account ? ',
                            style: TextStyle(
                                fontFamily: ThemeConstants.FONT_FAMILY,
                                fontWeight: FontWeight.w300,
                                fontSize: ThemeConstants.fontSize19)),
                        TextButtonWidget(
                            buttonName: 'Login',
                            onPressed: () {
                              Get.toNamed(Routes.LOGIN);
                            })
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
