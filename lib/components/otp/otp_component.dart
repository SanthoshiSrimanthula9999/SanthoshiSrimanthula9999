import 'package:digital_academy/commons/buttons/rounded_filled_button.dart';
import 'package:digital_academy/commons/buttons/text_button.dart';
import 'package:digital_academy/constants/image_constants.dart';
import 'package:digital_academy/constants/theme_constants.dart';
import 'package:digital_academy/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPComponent extends StatelessWidget {
  const OTPComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('arguments: ${Get.arguments}');
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
                              "${Get.arguments['from']}",
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
                              height: ThemeConstants.height33,
                            ),
                            Center(
                              child: Text(
                                'Verification Code',
                                style: TextStyle(
                                  fontFamily: ThemeConstants.FONT_FAMILY,
                                  fontStyle: FontStyle.normal,
                                  fontSize: ThemeConstants.fontSize26,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Enter the 4 digits code that you',
                                style: TextStyle(
                                    fontFamily: ThemeConstants.FONT_FAMILY,
                                    fontStyle: FontStyle.normal,
                                    fontSize: ThemeConstants.fontSize17,
                                    fontWeight: FontWeight.w500,
                                    color: ThemeConstants.APP_GREY_COLOR),
                              ),
                            ),
                            Center(
                              child: Text(
                                'received on your mobile.',
                                style: TextStyle(
                                    fontFamily: ThemeConstants.FONT_FAMILY,
                                    fontStyle: FontStyle.normal,
                                    fontSize: ThemeConstants.fontSize17,
                                    fontWeight: FontWeight.w500,
                                    color: ThemeConstants.APP_GREY_COLOR),
                              ),
                            ),
                            SizedBox(
                              height: ThemeConstants.height39,
                            ),
                            PinCodeTextField(
                              pinTheme: PinTheme(
                                inactiveColor: ThemeConstants.APP_GREY_COLOR,
                                activeColor: ThemeConstants.PRIMARY_COLOR,
                                shape: PinCodeFieldShape.box,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                fieldHeight: ThemeConstants.height75,
                                fieldWidth: ThemeConstants.width61,
                              ),
                              length: 4,
                              backgroundColor: Colors.transparent,
                              animationType: AnimationType.none,
                              animationDuration: Duration(milliseconds: 300),
                              textStyle: TextStyle(
                                  fontSize: ThemeConstants.fontSize36,
                                  fontWeight: FontWeight.w500),
                              onCompleted: (text) {
                                print("DONE $text");
                              },
                              onChanged: (value) {},
                              appContext: context,
                            ),
                            SizedBox(
                              height: ThemeConstants.height36,
                            ),
                            Container(
                              width: Get.width,
                              child: RoundedFilledButtonWidget(
                                  buttonName: 'Login',
                                  onPressed: () {
                                    Get.toNamed(Routes.CORE);
                                  }),
                            ),
                            SizedBox(
                              height: ThemeConstants.height30,
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
